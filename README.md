# Retina_v2
 
**Retina 2.0** is a raycasting library data pack for Minecraft: Java Edition 1.20+, using voxel traversal. At the moment, the features are pretty minimal, but I have a lot more planned, so check back in the future!

Unlike other similar packs, it supports (almost) **all** of the different hitboxes, including both blocks & entities. It also doesn't rely on entity teleportation, meaning it runs slightly faster on average too.

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

## Settings

### Target entities

By default, the ray will detect both entities and blocks. If you want to ignore entities, and just focus on blocks the player is be looking at, set `TargetEntities` to `false` (`0b`):

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
- Ignores for certain types of blocks: these will be implemented in a future update, but for now, just add whichever blocks you want to ignore to the `#retina:airs` tag on your end.


