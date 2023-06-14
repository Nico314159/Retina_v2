scoreboard players set $shape_found __variable__ 0
scoreboard players set $block.anvil __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.anvil __variable__ if block ~ ~ ~ #retina:anvil
scoreboard players operation $shape_found __variable__ += $block.anvil __variable__
execute if score $block.anvil __variable__ matches 1.. run function retina:hitbox/anvil
scoreboard players set $block.attached_stem __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.attached_stem __variable__ if block ~ ~ ~ #retina:attached_stem
scoreboard players operation $shape_found __variable__ += $block.attached_stem __variable__
execute if score $block.attached_stem __variable__ matches 1.. run function retina:hitbox/attached_stem
scoreboard players set $block.bed __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.bed __variable__ if block ~ ~ ~ #retina:bed
scoreboard players operation $shape_found __variable__ += $block.bed __variable__
execute if score $block.bed __variable__ matches 1.. run function retina:hitbox/bed
scoreboard players set $block.brewing_stand __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.brewing_stand __variable__ if block ~ ~ ~ #retina:brewing_stand
scoreboard players operation $shape_found __variable__ += $block.brewing_stand __variable__
execute if score $block.brewing_stand __variable__ matches 1.. run function retina:hitbox/brewing_stand
scoreboard players set $block.button __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.button __variable__ if block ~ ~ ~ #retina:button
scoreboard players operation $shape_found __variable__ += $block.button __variable__
execute if score $block.button __variable__ matches 1.. run function retina:hitbox/button
scoreboard players set $block.cactus_shaped __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.cactus_shaped __variable__ if block ~ ~ ~ #retina:cactus_shaped
scoreboard players operation $shape_found __variable__ += $block.cactus_shaped __variable__
execute if score $block.cactus_shaped __variable__ matches 1.. run function retina:hitbox/cactus_shaped
scoreboard players set $block.campfire __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.campfire __variable__ if block ~ ~ ~ #retina:campfire
scoreboard players operation $shape_found __variable__ += $block.campfire __variable__
execute if score $block.campfire __variable__ matches 1.. run function retina:hitbox/campfire
scoreboard players set $block.carpet __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.carpet __variable__ if block ~ ~ ~ #retina:carpet
scoreboard players operation $shape_found __variable__ += $block.carpet __variable__
execute if score $block.carpet __variable__ matches 1.. run function retina:hitbox/carpet
scoreboard players set $block.cauldron __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.cauldron __variable__ if block ~ ~ ~ #retina:cauldron
scoreboard players operation $shape_found __variable__ += $block.cauldron __variable__
execute if score $block.cauldron __variable__ matches 1.. run function retina:hitbox/cauldron
scoreboard players set $block.chain __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.chain __variable__ if block ~ ~ ~ #retina:chain
scoreboard players operation $shape_found __variable__ += $block.chain __variable__
execute if score $block.chain __variable__ matches 1.. run function retina:hitbox/chain
scoreboard players set $block.chest __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.chest __variable__ if block ~ ~ ~ #retina:chest
scoreboard players operation $shape_found __variable__ += $block.chest __variable__
execute if score $block.chest __variable__ matches 1.. run function retina:hitbox/chest
scoreboard players set $block.composter __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.composter __variable__ if block ~ ~ ~ #retina:composter
scoreboard players operation $shape_found __variable__ += $block.composter __variable__
execute if score $block.composter __variable__ matches 1.. run function retina:hitbox/composter
scoreboard players set $block.conduit __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.conduit __variable__ if block ~ ~ ~ #retina:conduit
scoreboard players operation $shape_found __variable__ += $block.conduit __variable__
execute if score $block.conduit __variable__ matches 1.. run function retina:hitbox/conduit
scoreboard players set $block.door __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.door __variable__ if block ~ ~ ~ #retina:door
scoreboard players operation $shape_found __variable__ += $block.door __variable__
execute if score $block.door __variable__ matches 1.. run function retina:hitbox/door
scoreboard players set $block.farmland_shaped __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.farmland_shaped __variable__ if block ~ ~ ~ #retina:farmland_shaped
scoreboard players operation $shape_found __variable__ += $block.farmland_shaped __variable__
execute if score $block.farmland_shaped __variable__ matches 1.. run function retina:hitbox/farmland_shaped
scoreboard players set $block.fence_gate __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.fence_gate __variable__ if block ~ ~ ~ #retina:fence_gate
scoreboard players operation $shape_found __variable__ += $block.fence_gate __variable__
execute if score $block.fence_gate __variable__ matches 1.. run function retina:hitbox/fence_gate
scoreboard players set $block.fence __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.fence __variable__ if block ~ ~ ~ #retina:fence
scoreboard players operation $shape_found __variable__ += $block.fence __variable__
execute if score $block.fence __variable__ matches 1.. run function retina:hitbox/fence
scoreboard players set $block.grass_shaped __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.grass_shaped __variable__ if block ~ ~ ~ #retina:grass_shaped
scoreboard players operation $shape_found __variable__ += $block.grass_shaped __variable__
execute if score $block.grass_shaped __variable__ matches 1.. run function retina:hitbox/grass_shaped
scoreboard players set $block.ladder __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.ladder __variable__ if block ~ ~ ~ #retina:ladder
scoreboard players operation $shape_found __variable__ += $block.ladder __variable__
execute if score $block.ladder __variable__ matches 1.. run function retina:hitbox/ladder
scoreboard players set $block.lantern __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.lantern __variable__ if block ~ ~ ~ #retina:lantern
scoreboard players operation $shape_found __variable__ += $block.lantern __variable__
execute if score $block.lantern __variable__ matches 1.. run function retina:hitbox/lantern
scoreboard players set $block.mushroom_shaped __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.mushroom_shaped __variable__ if block ~ ~ ~ #retina:mushroom_shaped
scoreboard players operation $shape_found __variable__ += $block.mushroom_shaped __variable__
execute if score $block.mushroom_shaped __variable__ matches 1.. run function retina:hitbox/mushroom_shaped
scoreboard players set $block.pane_shaped __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.pane_shaped __variable__ if block ~ ~ ~ #retina:pane_shaped
scoreboard players operation $shape_found __variable__ += $block.pane_shaped __variable__
execute if score $block.pane_shaped __variable__ matches 1.. run function retina:hitbox/pane_shaped
scoreboard players set $block.pressure_plate __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.pressure_plate __variable__ if block ~ ~ ~ #retina:pressure_plate
scoreboard players operation $shape_found __variable__ += $block.pressure_plate __variable__
execute if score $block.pressure_plate __variable__ matches 1.. run function retina:hitbox/pressure_plate
scoreboard players set $block.rail __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.rail __variable__ if block ~ ~ ~ #retina:rail
scoreboard players operation $shape_found __variable__ += $block.rail __variable__
execute if score $block.rail __variable__ matches 1.. run function retina:hitbox/rail
scoreboard players set $block.sapling __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.sapling __variable__ if block ~ ~ ~ #retina:sapling
scoreboard players operation $shape_found __variable__ += $block.sapling __variable__
execute if score $block.sapling __variable__ matches 1.. run function retina:hitbox/sapling
scoreboard players set $block.short_crop __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.short_crop __variable__ if block ~ ~ ~ #retina:short_crop
scoreboard players operation $shape_found __variable__ += $block.short_crop __variable__
execute if score $block.short_crop __variable__ matches 1.. run function retina:hitbox/short_crop
scoreboard players set $block.slab __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.slab __variable__ if block ~ ~ ~ #retina:slab
scoreboard players operation $shape_found __variable__ += $block.slab __variable__
execute if score $block.slab __variable__ matches 1.. run function retina:hitbox/slab
scoreboard players set $block.snow __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.snow __variable__ if block ~ ~ ~ #retina:snow
scoreboard players operation $shape_found __variable__ += $block.snow __variable__
execute if score $block.snow __variable__ matches 1.. run function retina:hitbox/snow
scoreboard players set $block.stair __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.stair __variable__ if block ~ ~ ~ #retina:stair
scoreboard players operation $shape_found __variable__ += $block.stair __variable__
execute if score $block.stair __variable__ matches 1.. run function retina:hitbox/stair
scoreboard players set $block.standing_sign_or_banner __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.standing_sign_or_banner __variable__ if block ~ ~ ~ #retina:standing_sign_or_banner
scoreboard players operation $shape_found __variable__ += $block.standing_sign_or_banner __variable__
execute if score $block.standing_sign_or_banner __variable__ matches 1.. run function retina:hitbox/standing_sign_or_banner
scoreboard players set $block.sugar_cane_like __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.sugar_cane_like __variable__ if block ~ ~ ~ #retina:sugar_cane_like
scoreboard players operation $shape_found __variable__ += $block.sugar_cane_like __variable__
execute if score $block.sugar_cane_like __variable__ matches 1.. run function retina:hitbox/sugar_cane_like
scoreboard players set $block.tall_crop __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.tall_crop __variable__ if block ~ ~ ~ #retina:tall_crop
scoreboard players operation $shape_found __variable__ += $block.tall_crop __variable__
execute if score $block.tall_crop __variable__ matches 1.. run function retina:hitbox/tall_crop
scoreboard players set $block.trapdoor __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.trapdoor __variable__ if block ~ ~ ~ #retina:trapdoor
scoreboard players operation $shape_found __variable__ += $block.trapdoor __variable__
execute if score $block.trapdoor __variable__ matches 1.. run function retina:hitbox/trapdoor
scoreboard players set $block.vertical_torch __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.vertical_torch __variable__ if block ~ ~ ~ #retina:vertical_torch
scoreboard players operation $shape_found __variable__ += $block.vertical_torch __variable__
execute if score $block.vertical_torch __variable__ matches 1.. run function retina:hitbox/vertical_torch
scoreboard players set $block.wall_sign __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.wall_sign __variable__ if block ~ ~ ~ #retina:wall_sign
scoreboard players operation $shape_found __variable__ += $block.wall_sign __variable__
execute if score $block.wall_sign __variable__ matches 1.. run function retina:hitbox/wall_sign
scoreboard players set $block.wall_torch __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.wall_torch __variable__ if block ~ ~ ~ #retina:wall_torch
scoreboard players operation $shape_found __variable__ += $block.wall_torch __variable__
execute if score $block.wall_torch __variable__ matches 1.. run function retina:hitbox/wall_torch
scoreboard players set $block.wall __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.wall __variable__ if block ~ ~ ~ #retina:wall
scoreboard players operation $shape_found __variable__ += $block.wall __variable__
execute if score $block.wall __variable__ matches 1.. run function retina:hitbox/wall
execute unless score $shape_found __variable__ matches 1.. run function retina:hitbox/cubic