data modify storage retina:data Pos set from entity @s Pos
execute store result score $entity_frac_X retina.__variable__ run data get storage retina:data Pos[0] 480
scoreboard players set $k retina.__variable__ 480
scoreboard players operation $k retina.__variable__ *= $step_X retina.__variable__
scoreboard players operation $k retina.__variable__ -= $frac_origin_X retina.__variable__
scoreboard players operation $k retina.__variable__ += $origin_X retina.__variable__
scoreboard players operation $entity_frac_X retina.__variable__ -= $k retina.__variable__
tellraw @a ["",{"text":"K = ","bold":true},{"score":{"name":"$k","objective":"retina.__variable__"}},{"text":", int_X = "},{"score":{"name":"$int_X","objective":"retina.__variable__"}}]
execute store result score $entity_frac_Y retina.__variable__ run data get storage retina:data Pos[1] 480
scoreboard players set $k retina.__variable__ 480
scoreboard players operation $k retina.__variable__ *= $step_Y retina.__variable__
scoreboard players operation $k retina.__variable__ -= $frac_origin_Y retina.__variable__
scoreboard players operation $k retina.__variable__ += $origin_Y retina.__variable__
scoreboard players operation $entity_frac_Y retina.__variable__ -= $k retina.__variable__
tellraw @a ["",{"text":"K = ","bold":true},{"score":{"name":"$k","objective":"retina.__variable__"}},{"text":", int_Y = "},{"score":{"name":"$int_Y","objective":"retina.__variable__"}}]
execute store result score $entity_frac_Z retina.__variable__ run data get storage retina:data Pos[2] 480
scoreboard players set $k retina.__variable__ 480
scoreboard players operation $k retina.__variable__ *= $step_Z retina.__variable__
scoreboard players operation $k retina.__variable__ -= $frac_origin_Z retina.__variable__
scoreboard players operation $k retina.__variable__ += $origin_Z retina.__variable__
scoreboard players operation $entity_frac_Z retina.__variable__ -= $k retina.__variable__
tellraw @a ["",{"text":"K = ","bold":true},{"score":{"name":"$k","objective":"retina.__variable__"}},{"text":", int_Z = "},{"score":{"name":"$int_Z","objective":"retina.__variable__"}}]
data remove storage retina:data Pos
kill @s