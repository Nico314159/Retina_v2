execute store result score $input_pitch __variable__ run data get entity @s Rotation[1] 10
execute store result score $input_yaw __variable__ run data get entity @s Rotation[0] 10
function retina:math/gimbal_to_vec
scoreboard players set $delta_x __variable__ 1000000
scoreboard players set $delta_y __variable__ 1000000
scoreboard players set $delta_z __variable__ 1000000
scoreboard players operation $delta_x __variable__ /= $output_vec3.x __variable__
scoreboard players operation $delta_y __variable__ /= $output_vec3.y __variable__
scoreboard players operation $delta_z __variable__ /= $output_vec3.z __variable__
execute if score $output_vec3.x __variable__ matches 0 run scoreboard players set $delta_x __variable__ 2147483647
execute if score $output_vec3.y __variable__ matches 0 run scoreboard players set $delta_y __variable__ 2147483647
execute if score $output_vec3.z __variable__ matches 0 run scoreboard players set $delta_z __variable__ 2147483647
scoreboard players operation $distance_x __variable__ = $delta_x __variable__
scoreboard players operation $distance_y __variable__ = $delta_y __variable__
scoreboard players operation $distance_z __variable__ = $delta_z __variable__
function retina:traverse/loop