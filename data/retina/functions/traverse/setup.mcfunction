execute store result score $input_pitch __variable__ run data get entity @s Rotation[1] 10
execute store result score $input_yaw __variable__ run data get entity @s Rotation[0] 10
tellraw @a ["",{"text":"Pitch: ","bold":false,"color":"white"},{"score":{"name":"$input_pitch","objective":"__variable__"},"color":"red"},{"text":", ","color":"red"},{"text":"Yaw: ","bold":false,"color":"white"},{"score":{"name":"$input_yaw","objective":"__variable__"},"color":"red"}]
function retina:math/gimbal_to_vec
tellraw @a ["",{"text":"Facing Vector: "},{"text":"[","color":"gold"},{"score":{"name":"$output_vec3.x","objective":"__variable__"},"color":"gold"},{"text":", ","color":"gold"},{"score":{"name":"$output_vec3.y","objective":"__variable__"},"color":"gold"},{"text":", ","color":"gold"},{"score":{"name":"$output_vec3.z","objective":"__variable__"},"color":"gold"},{"text":"]","color":"gold"}]
execute store result score $x __variable__ run data get entity @s Pos[0] 1000
execute store result score $y __variable__ run data get entity @s Pos[1] 1000
scoreboard players add $y __variable__ 1620
execute store result score $z __variable__ run data get entity @s Pos[2] 1000
execute if score $output_vec3.x __variable__ matches ..-1 run scoreboard players set $sign_x __variable__ -1
execute if score $output_vec3.x __variable__ matches 0.. run scoreboard players set $sign_x __variable__ 1
scoreboard players set $delta_x __variable__ 1000000
scoreboard players operation $delta_x __variable__ /= $output_vec3.x __variable__
scoreboard players operation $delta_x __variable__ /= $sign_x __variable__
scoreboard players operation $distance_x __variable__ = $x __variable__
scoreboard players operation $distance_x __variable__ *= $sign_x __variable__
scoreboard players operation $distance_x __variable__ *= -1 __int__
scoreboard players operation $distance_x __variable__ %= 1000 __int__
scoreboard players operation $distance_x __variable__ *= $delta_x __variable__
scoreboard players operation $distance_x __variable__ /= 1000 __int__
execute if score $output_vec3.x __variable__ matches 0 run scoreboard players set $delta_x __variable__ 2147483647
execute if score $output_vec3.x __variable__ matches 0 run scoreboard players set $distance_x __variable__ 2147483647
scoreboard players operation $visual_x __variable__ = $x __variable__
scoreboard players operation $visual_x __variable__ /= 1000 __int__
execute if score $output_vec3.y __variable__ matches ..-1 run scoreboard players set $sign_y __variable__ -1
execute if score $output_vec3.y __variable__ matches 0.. run scoreboard players set $sign_y __variable__ 1
scoreboard players set $delta_y __variable__ 1000000
scoreboard players operation $delta_y __variable__ /= $output_vec3.y __variable__
scoreboard players operation $delta_y __variable__ /= $sign_y __variable__
scoreboard players operation $distance_y __variable__ = $y __variable__
scoreboard players operation $distance_y __variable__ *= $sign_y __variable__
scoreboard players operation $distance_y __variable__ *= -1 __int__
scoreboard players operation $distance_y __variable__ %= 1000 __int__
scoreboard players operation $distance_y __variable__ *= $delta_y __variable__
scoreboard players operation $distance_y __variable__ /= 1000 __int__
execute if score $output_vec3.y __variable__ matches 0 run scoreboard players set $delta_y __variable__ 2147483647
execute if score $output_vec3.y __variable__ matches 0 run scoreboard players set $distance_y __variable__ 2147483647
scoreboard players operation $visual_y __variable__ = $y __variable__
scoreboard players operation $visual_y __variable__ /= 1000 __int__
execute if score $output_vec3.z __variable__ matches ..-1 run scoreboard players set $sign_z __variable__ -1
execute if score $output_vec3.z __variable__ matches 0.. run scoreboard players set $sign_z __variable__ 1
scoreboard players set $delta_z __variable__ 1000000
scoreboard players operation $delta_z __variable__ /= $output_vec3.z __variable__
scoreboard players operation $delta_z __variable__ /= $sign_z __variable__
scoreboard players operation $distance_z __variable__ = $z __variable__
scoreboard players operation $distance_z __variable__ *= $sign_z __variable__
scoreboard players operation $distance_z __variable__ *= -1 __int__
scoreboard players operation $distance_z __variable__ %= 1000 __int__
scoreboard players operation $distance_z __variable__ *= $delta_z __variable__
scoreboard players operation $distance_z __variable__ /= 1000 __int__
execute if score $output_vec3.z __variable__ matches 0 run scoreboard players set $delta_z __variable__ 2147483647
execute if score $output_vec3.z __variable__ matches 0 run scoreboard players set $distance_z __variable__ 2147483647
scoreboard players operation $visual_z __variable__ = $z __variable__
scoreboard players operation $visual_z __variable__ /= 1000 __int__
tellraw @a ["",{"text":"Origin: "},{"text":"[","color":"yellow"},{"score":{"name":"$visual_x","objective":"__variable__"},"color":"yellow"},{"text":", ","color":"yellow"},{"score":{"name":"$visual_y","objective":"__variable__"},"color":"yellow"},{"text":", ","color":"yellow"},{"score":{"name":"$visual_z","objective":"__variable__"},"color":"yellow"},{"text":"]","color":"yellow"}]
scoreboard players set $step __variable__ 0
scoreboard players set $end __variable__ 0
function retina:traverse/loop