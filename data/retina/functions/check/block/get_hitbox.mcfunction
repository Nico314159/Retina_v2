scoreboard players set $shape_found __variable__ 0
scoreboard players set $block.slab __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.slab __variable__ if block ~ ~ ~ #retina:slab
scoreboard players operation $shape_found __variable__ += $block.slab __variable__
execute if score $block.slab __variable__ matches 1.. run function retina:hitbox/slab
scoreboard players set $block.stair __variable__ 0
execute unless score $shape_found __variable__ matches 1.. store success score $block.stair __variable__ if block ~ ~ ~ #retina:stair
scoreboard players operation $shape_found __variable__ += $block.stair __variable__
execute if score $block.stair __variable__ matches 1.. run function retina:hitbox/stair
execute unless score $shape_found __variable__ matches 1.. run function retina:hitbox/cubic