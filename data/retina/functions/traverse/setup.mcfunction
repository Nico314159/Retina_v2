execute store result score $input_pitch __variable__ run data get entity @s Rotation[1] 10
execute store result score $input_yaw __variable__ run data get entity @s Rotation[0] 10
tellraw @a ["",{"text":"Pitch: ","bold":false,"color":"white"},{"score":{"name":"$input_pitch","objective":"__variable__"},"color":"red"},{"text":", ","color":"red"},{"text":"Yaw: ","bold":false,"color":"white"},{"score":{"name":"$input_yaw","objective":"__variable__"},"color":"red"}]
function retina:math/gimbal_to_vec
tellraw @a ["",{"text":"Facing Vector: "},{"text":"[","color":"gold"},{"score":{"name":"$output_vec3.x","objective":"__variable__"},"color":"gold"},{"text":", ","color":"gold"},{"score":{"name":"$output_vec3.y","objective":"__variable__"},"color":"gold"},{"text":", ","color":"gold"},{"score":{"name":"$output_vec3.z","objective":"__variable__"},"color":"gold"},{"text":"]","color":"gold"}]
execute store result score $x __variable__ run data get entity @s Pos[0]
execute store result score $y __variable__ run data get entity @s Pos[1]
execute store result score $z __variable__ run data get entity @s Pos[2]
tellraw @a ["",{"text":"Origin: "},{"text":"[","color":"yellow"},{"score":{"name":"$x","objective":"__variable__"},"color":"yellow"},{"text":", ","color":"yellow"},{"score":{"name":"$y","objective":"__variable__"},"color":"yellow"},{"text":", ","color":"yellow"},{"score":{"name":"$z","objective":"__variable__"},"color":"yellow"},{"text":"]","color":"yellow"}]
scoreboard players set $delta_x __variable__ 1000000
scoreboard players set $delta_y __variable__ 1000000
scoreboard players set $delta_z __variable__ 1000000
scoreboard players operation $delta_x __variable__ /= $output_vec3.x __variable__
scoreboard players operation $delta_y __variable__ /= $output_vec3.y __variable__
scoreboard players operation $delta_z __variable__ /= $output_vec3.z __variable__
execute if score $output_vec3.x __variable__ matches 0 run scoreboard players set $delta_x __variable__ 2147483647
execute if score $output_vec3.y __variable__ matches 0 run scoreboard players set $delta_y __variable__ 2147483647
execute if score $output_vec3.z __variable__ matches 0 run scoreboard players set $delta_z __variable__ 2147483647
tellraw @a ["",{"text":"Distances to each block: "},{"text":"[","color":"green"},{"score":{"name":"$delta_x","objective":"__variable__"},"color":"green"},{"text":", ","color":"green"},{"score":{"name":"$delta_y","objective":"__variable__"},"color":"green"},{"text":", ","color":"green"},{"score":{"name":"$delta_z","objective":"__variable__"},"color":"green"},{"text":"]","color":"green"}]
scoreboard players operation $distance_x __variable__ = $delta_x __variable__
scoreboard players operation $distance_y __variable__ = $delta_y __variable__
scoreboard players operation $distance_z __variable__ = $delta_z __variable__
function retina:traverse/loop