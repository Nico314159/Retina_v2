# ℹ️ If you think you need this, you probably don't. 

# Ael's latest version of [Iris](https://github.com/Aeldrion/Iris) has better performance, supports random block hitboxes, and automatically updates to new Minecraft versions. Thus, I recommend using it over this repo unless there is a very good reason otherwise.


## Retina v2
 
**Retina 2.0** is a raycasting library data pack for Minecraft: Java Edition 1.20+, using voxel traversal to support most block hitboxes (slabs, trapdoors, fences, etc). 

## Usage

The `retina:traverse/setup` function is the entry point for the raycast, and it needs to be executed `as` and `at` the player in question.
```mcfunction
# Run a raycast whenever a player is holding a bow
execute as @a[nbt={SelectedItem:{id:"minecraft:bow"}}] at @s run function retina:traverse/setup
```
Also, an entity hit by the raycast will receive the `retina.target` tag.
```mcfunction
# Give levitation to goats the player is looking at
execute as <player> at @s run function retina:traverse/setup
effect give @e[type=minecraft:goat, tag=retina.target] minecraft:levitation 1 0
```
For more specific data about the intersected block/entity, see the 'Output' section.

To do multiple angled raycasts at once (eg. shotguns), you can use the `retina:traverse/multicast` function. Make sure that `HorizontalCount` and `VerticalCount` are set properly or it will not work. (see below for more information)

## Function tag

If you want to run your own function every time a raycast hits something/someone (including in multicasts), you can add it to the `#retina:on_hit` function tag in your datapack. For example, my TF2 pack uses the following:
```json
{
    "values": [
        "tf2:weapons/damage"
    ],
    "replace": false
}
```
(`"replace": false` is advised for compatibility with other potential datapacks modifying the tag)

## Settings / Input

### Target blocks

By default, the ray will detect both blocks and entities. If you want to ignore blocks, and just focus on entities the player is looking at, set `TargetBlocks` to `false` (`0b`):

```mcfunction
data modify storage retina:input TargetBlocks set value false
```

Even if `TargetBlocks` is true, "intangible" blocks (air and light blocks) are still ignored, as well as [a few special cases of randomized blocks](#limitations) 

### Target entities

On the other hand, if you want to ignore entities and only focus on blocks, then set `TargetEntities` to `false` (`0b`):

```mcfunction
data modify storage retina:input TargetEntities set value false
```

Even if `TargetEntities` is true, "intangible" entities (ones through which a block can be placed) are still ignored. For example, mobs, minecarts or falling blocks may be detected, but items and arrows are ignored. The executing entity itself is ignored as well.

### Maximum recursion depth

By default, the ray will traverse up to 50 blocks and give up if no block or entity is found. This limit can be modified by changing the value of `MaxRecursionDepth`:

```mcfunction
data modify storage retina:input MaxRecursionDepth set value 100
```

Values under 10 may fail to detect blocks that are within arm reach of the player.

### Raycast count

The `HorizontalCount` and `VerticalCount` storage values define an NxM grid of raycasts offset from the cursor, whereas `CenteredCount` adds additional raycasts that are centered directly on the crosshair (like regular raycasts).
To set all of these different values at once, you can use the `data merge` command.

```mcfunction
# Will do 10 raycasts in a 3x3 grid with the middle one doubled up.
data merge storage retina:input {HorizontalCount: 3, VerticalCount: 3, CenteredCount: 1}
```

### Random spread

The `SpreadFactor` storage path lets you set the random spread for multi-raycasts. `SpreadFactor[0]` is the minimum amount, and `SpreadFactor[1]` is the maximum.
If you don't want any randomization, simply set both values to the same number.

## Raycasting without an entity

Using the `retina:traverse/setup_no_entity` function, you can do a raycast from the `execute positioned/rotated` context, without needing a specific entity to use. It also comes with a few additional settings.

### Store same raycast

`SetupContext` lets you save a particular position and rotation for future use without needing the same execute command, and also makes it easier to take variable inputs. For example: 
```mcfunction
data merge retina:input {SetupContext: {Pos: [10.5f, 0.0f, -56.5f], Rotation: [45.0f, -30.0f]}}
data modify storage retina:input SetupContext.Pos[2] set from storage my_pack:foo bar
function retina:traverse/setup_no_entity

...
function retina:traverse/setup_no_entity
# ^^ will still use the same coordinates as before
```

### Override executing entity

If `OverrideExecutingEntity` is false or unspecified, all entities in the same voxel as the origin will be given the `retina.executing` tag, as if the raycast function had been called by them. If this behavior is not wanted, set `OverrideExecutingEntity` to `true` (`1b`) and no entities will be tagged.

### ExpandEntityHitboxes

Setting `ExpandEntityHitboxes` to a double will (for the purpose of the raycast) expand all entity hitboxes by that number of blocks. 
```mcfunction
# Raycast will act as if entity hitboxes are half a block bigger in each direction
data merge retina:input {ExpandEntityHitboxes: 0.5}
```

## Output

Below is a list of all the information that Retina will save to storage every time `retina:get_target` is executed.

### Target

`Target` is a string that indicates what the ray hits. Set to `"BLOCK"` if a block is found, `"ENTITY"` if an entity is found, and `"NONE"` if the maximum recursion depth is reached without finding a block or an entity.

### Hit face

`HitFace` is a string that indicates which face of the block/entity the ray hits. (`"NORTH"`, `"SOUTH"`, etc.)
Only exists if `Target` is `"BLOCK"` or `"ENTITY"`.

### Distance

`Distance` is a double corresponding to the distance the ray needs to travel before hitting a solid surface. Distance is also stored to the `$total_distance retina` score with a scale of 480.
Only exists if `Target` is `"BLOCK"` or `"ENTITY"`.

### Targeted block

`TargetedBlock` is a list of three integers, corresponding to the world coordinates of the block that the ray hits.
Only exists if `Target` is `"BLOCK"`.

### Targeted entity

`TargetedEntity` is an array of four integers, corresponding to the UUID of the entity that the ray hits.
Only exists if `Target` is `"ENTITY"`.

### Placed position

`PlacedPosition` is a list of three integers, corresponding to the world coordinates of the block the ray was in before entering the tile it hit. In other words, if a player were to place a block, this is the position where the block would be placed, unless the player is placing a block behind them (e.g. placing a block against a climbed ladder).
Only exists if `Target` is `"BLOCK"`.

### Contact coordinates

`ContactCoordinates` is a list of three doubles between 0.0 and 1.0d, corresponding to the coordinates where the ray hits. Origin is the West, North, bottom corner of the 1x1x1 tile that is hit.
Only exists if `Target` is `"BLOCK"` or `"ENTITY"`.

### Contact surface

`ContactSurface` is a list of six doubles between 0.0d and 1.0d. The first three numbers and the last three numbers are the coordinates of two opposite corners of the surface area the ray hits. Origin is the West, North, bottom corner of the 1x1x1 tile that is hit.
Only exists if `Target` is `"BLOCK"` or `"ENTITY"`.


# Including Retina in your data pack

To add Retina to your data pack, copy the `retina` namespace folder to your own data pack folder, as well as the `minecraft` namespace folder. If your pack uses the `#minecraft:load` function tag, make sure to include `retina:__load__` too. 

## Publishing modified versions of Retina

You are free to redistribute Retina or modified versions of Retina as a part of your own datapacks. To prevent conflict with other packs, it might be helpful to change the namespace to something like `retina_mypack`. You can do this by using a code editor's "Replace in folder" feature to change all occurrences of `retina:` to `retina_mypack:`.

## Limitations

- Randomized block hitboxes: flowers, bamboo plants, mangrove propagules, and pointed dripstone can't be properly implemented due to having hitboxes that differ depending on what block they are placed on. Thus, they are currently treated as air blocks.


