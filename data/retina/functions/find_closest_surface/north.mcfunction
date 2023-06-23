data modify storage retina:data List set from storage retina:data Surfaces.North
execute store result score $surfaces retina.__variable__ run data get storage retina:data List
scoreboard players operation $cuboid_id retina.__variable__ = $surfaces retina.__variable__
scoreboard players remove $cuboid_id retina.__variable__ 1
execute if score $surfaces retina.__variable__ matches 1.. run function retina:__private__/while_loop/4