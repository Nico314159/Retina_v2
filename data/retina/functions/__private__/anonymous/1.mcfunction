tag @e remove retina.target
scoreboard players reset * retina.hit
kill @e[type=marker,tag=retina.endpoint]
tp @s ~ ~ ~ ~ ~
data modify storage retina:operations setup_context set from entity @s {}
execute unless score $override_pitch retina.__variable__ matches 1 store result score $input_pitch retina.__variable__ run data get storage retina:operations setup_context.Rotation[1] 10
execute if score $override_pitch retina.__variable__ matches 1 run scoreboard players operation $input_pitch retina.__variable__ = $override_pitch retina.__variable__
scoreboard players reset $override_pitch retina.__variable__
execute unless score $override_yawn retina.__variable__ matches 1 store result score $input_yaw retina.__variable__ run data get storage retina:operations setup_context.Rotation[0] 10
execute if score $override_yawn retina.__variable__ matches 1 run scoreboard players operation $input_yaw retina.__variable__ = $override_yawn retina.__variable__
scoreboard players reset $override_yawn retina.__variable__
execute if score $debug_messages retina.__variable__ matches 1.. run tellraw @a ["",{"text":"Pitch: ","bold":false,"color":"white"},{"score":{"name":"$input_pitch","objective":"retina.__variable__"},"color":"red"},{"text":", ","color":"red"},{"text":"Yaw: ","bold":false,"color":"white"},{"score":{"name":"$input_yaw","objective":"retina.__variable__"},"color":"red"}]
function retina:math/gimbal_to_vec
execute if score $debug_messages retina.__variable__ matches 1.. run tellraw @a ["",{"text":"Facing Vector: "},{"text":"[","color":"gold"},{"score":{"name":"$output_vec3.X","objective":"retina.__variable__"},"color":"gold"},{"text":", ","color":"gold"},{"score":{"name":"$output_vec3.Y","objective":"retina.__variable__"},"color":"gold"},{"text":", ","color":"gold"},{"score":{"name":"$output_vec3.Z","objective":"retina.__variable__"},"color":"gold"},{"text":"]","color":"gold"}]
execute store result score $X retina.__variable__ run data get storage retina:operations setup_context.Pos[0] 480
execute store result score $Y retina.__variable__ run data get storage retina:operations setup_context.Pos[1] 480
execute store result score $Z retina.__variable__ run data get storage retina:operations setup_context.Pos[2] 480
execute store result score $overflow_check_X retina.__variable__ run data get storage retina:operations setup_context.Pos[0] 1
execute store result score $overflow_check_Z retina.__variable__ run data get storage retina:operations setup_context.Pos[2] 1
kill @s