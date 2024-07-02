tag @e remove retina.target
scoreboard players reset * retina.hit
kill @e[type=marker,tag=retina.endpoint]
execute store result score $input_pitch retina.__variable__ run data get entity @s Rotation[1] 10
execute store result score $input_yaw retina.__variable__ run data get entity @s Rotation[0] 10
execute if score $debug_messages retina.__variable__ matches 1.. run tellraw @a ["",{"text":"Pitch: ","bold":false,"color":"white","type":"text"},{"score":{"name":"$input_pitch","objective":"retina.__variable__"},"color":"red","type":"score"},{"text":", ","color":"red"},{"text":"Yaw: ","bold":false,"color":"white","type":"text"},{"score":{"name":"$input_yaw","objective":"retina.__variable__"},"color":"red","type":"score"}]
function retina:math/gimbal_to_vec
execute if score $debug_messages retina.__variable__ matches 1.. run tellraw @a ["",{"text":"Facing Vector: "},{"text":"[","color":"gold","type":"text"},{"score":{"name":"$output_vec3.X","objective":"retina.__variable__"},"color":"gold","type":"score"},{"text":", ","color":"gold"},{"score":{"name":"$output_vec3.Y","objective":"retina.__variable__"},"color":"gold","type":"score"},{"text":", ","color":"gold"},{"score":{"name":"$output_vec3.Z","objective":"retina.__variable__"},"color":"gold","type":"score"},{"text":"]","color":"gold"}]