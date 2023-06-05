data modify storage retina:data List set from storage retina:data Surfaces.South
execute store result score $surfaces __variable__ run data get storage retina:data List
scoreboard players operation $cuboid_id __variable__ = $surfaces __variable__
scoreboard players remove $cuboid_id __variable__ 1
execute if score $surfaces __variable__ matches 1.. run function retina:__private__/while_loop/5