execute store result score $int_X retina.__variable__ run data get entity @e[type=marker,tag=retina.height,limit=1] Pos[0] 1
scoreboard players operation $test_X retina.__variable__ = $int_X retina.__variable__
scoreboard players operation $test_X retina.__variable__ /= $overflow_risk retina.__variable__
execute unless score $test_X retina.__variable__ matches -1..0 run tellraw @a ["",{"text":"[Error] ","color":"dark_red"},{"text":"Raycast X coordinate of ","color":"red"},{"score":{"name":"$int_X","objective":"retina.__variable__"},"color":"red"},{"text":" is out of range (-","color":"red"},{"score":{"name":"$overflow_risk","objective":"retina.__variable__"},"color":"red"},{"text":", ","color":"red"},{"score":{"name":"$overflow_risk","objective":"retina.__variable__"},"color":"red"},{"text":")","color":"red"}]
execute unless score $test_X retina.__variable__ matches -1..0 run return 0
execute store result score $int_Z retina.__variable__ run data get entity @e[type=marker,tag=retina.height,limit=1] Pos[0] 1
scoreboard players operation $test_Z retina.__variable__ = $int_Z retina.__variable__
scoreboard players operation $test_Z retina.__variable__ /= $overflow_risk retina.__variable__
execute unless score $test_Z retina.__variable__ matches -1..0 run tellraw @a ["",{"text":"[Error] ","color":"dark_red"},{"text":"Raycast Z coordinate of ","color":"red"},{"score":{"name":"$int_Z","objective":"retina.__variable__"},"color":"red"},{"text":" is out of range (-","color":"red"},{"score":{"name":"$overflow_risk","objective":"retina.__variable__"},"color":"red"},{"text":", ","color":"red"},{"score":{"name":"$overflow_risk","objective":"retina.__variable__"},"color":"red"},{"text":")","color":"red"}]
execute unless score $test_Z retina.__variable__ matches -1..0 run return 0
execute store result score $input_pitch retina.__variable__ run data get entity @s Rotation[1] 10
execute store result score $input_yaw retina.__variable__ run data get entity @s Rotation[0] 10
execute if score $debug_messages retina.__variable__ matches 1.. run tellraw @a ["",{"text":"Pitch: ","bold":false,"color":"white"},{"score":{"name":"$input_pitch","objective":"retina.__variable__"},"color":"red"},{"text":", ","color":"red"},{"text":"Yaw: ","bold":false,"color":"white"},{"score":{"name":"$input_yaw","objective":"retina.__variable__"},"color":"red"}]
function retina:math/gimbal_to_vec
execute if score $debug_messages retina.__variable__ matches 1.. run tellraw @a ["",{"text":"Facing Vector: "},{"text":"[","color":"gold"},{"score":{"name":"$output_vec3.X","objective":"retina.__variable__"},"color":"gold"},{"text":", ","color":"gold"},{"score":{"name":"$output_vec3.Y","objective":"retina.__variable__"},"color":"gold"},{"text":", ","color":"gold"},{"score":{"name":"$output_vec3.Z","objective":"retina.__variable__"},"color":"gold"},{"text":"]","color":"gold"}]
execute anchored eyes run summon minecraft:marker ^ ^ ^ {Tags:["retina.height"]}
execute store result score $X retina.__variable__ run data get entity @e[type=marker,tag=retina.height,limit=1] Pos[0] 480
execute store result score $Y retina.__variable__ run data get entity @e[type=marker,tag=retina.height,limit=1] Pos[1] 480
execute store result score $Z retina.__variable__ run data get entity @e[type=marker,tag=retina.height,limit=1] Pos[2] 480
kill @e[type=marker,tag=retina.height,limit=1]
scoreboard players operation $origin_X retina.__variable__ = $X retina.__variable__
scoreboard players operation $frac_origin_X retina.__variable__ = $X retina.__variable__
scoreboard players operation $frac_origin_X retina.__variable__ %= 480 retina.__int__
scoreboard players set $step_X retina.__variable__ 0
execute if score $output_vec3.X retina.__variable__ matches ..-1 run scoreboard players set $sign_X retina.__variable__ -1
execute if score $output_vec3.X retina.__variable__ matches 0.. run scoreboard players set $sign_X retina.__variable__ 1
scoreboard players set $delta_X retina.__variable__ 230400
scoreboard players operation $delta_X retina.__variable__ /= $output_vec3.X retina.__variable__
scoreboard players operation $delta_X retina.__variable__ /= $sign_X retina.__variable__
scoreboard players operation $distance_X retina.__variable__ = $X retina.__variable__
scoreboard players operation $distance_X retina.__variable__ *= $sign_X retina.__variable__
scoreboard players operation $distance_X retina.__variable__ *= -1 retina.__int__
scoreboard players operation $distance_X retina.__variable__ %= 480 retina.__int__
scoreboard players operation $distance_X retina.__variable__ *= $delta_X retina.__variable__
scoreboard players operation $distance_X retina.__variable__ /= 480 retina.__int__
execute if score $output_vec3.X retina.__variable__ matches 0 run scoreboard players set $delta_X retina.__variable__ 2147483647
execute if score $output_vec3.X retina.__variable__ matches 0 run scoreboard players set $distance_X retina.__variable__ 2147483647
scoreboard players operation $int_X retina.__variable__ = $X retina.__variable__
scoreboard players operation $int_X retina.__variable__ /= 480 retina.__int__
scoreboard players operation $frac_X retina.__variable__ = $X retina.__variable__
scoreboard players operation $frac_X retina.__variable__ %= 480 retina.__int__
scoreboard players operation $origin_Y retina.__variable__ = $Y retina.__variable__
scoreboard players operation $frac_origin_Y retina.__variable__ = $Y retina.__variable__
scoreboard players operation $frac_origin_Y retina.__variable__ %= 480 retina.__int__
scoreboard players set $step_Y retina.__variable__ 0
execute if score $output_vec3.Y retina.__variable__ matches ..-1 run scoreboard players set $sign_Y retina.__variable__ -1
execute if score $output_vec3.Y retina.__variable__ matches 0.. run scoreboard players set $sign_Y retina.__variable__ 1
scoreboard players set $delta_Y retina.__variable__ 230400
scoreboard players operation $delta_Y retina.__variable__ /= $output_vec3.Y retina.__variable__
scoreboard players operation $delta_Y retina.__variable__ /= $sign_Y retina.__variable__
scoreboard players operation $distance_Y retina.__variable__ = $Y retina.__variable__
scoreboard players operation $distance_Y retina.__variable__ *= $sign_Y retina.__variable__
scoreboard players operation $distance_Y retina.__variable__ *= -1 retina.__int__
scoreboard players operation $distance_Y retina.__variable__ %= 480 retina.__int__
scoreboard players operation $distance_Y retina.__variable__ *= $delta_Y retina.__variable__
scoreboard players operation $distance_Y retina.__variable__ /= 480 retina.__int__
execute if score $output_vec3.Y retina.__variable__ matches 0 run scoreboard players set $delta_Y retina.__variable__ 2147483647
execute if score $output_vec3.Y retina.__variable__ matches 0 run scoreboard players set $distance_Y retina.__variable__ 2147483647
scoreboard players operation $int_Y retina.__variable__ = $Y retina.__variable__
scoreboard players operation $int_Y retina.__variable__ /= 480 retina.__int__
scoreboard players operation $frac_Y retina.__variable__ = $Y retina.__variable__
scoreboard players operation $frac_Y retina.__variable__ %= 480 retina.__int__
scoreboard players operation $origin_Z retina.__variable__ = $Z retina.__variable__
scoreboard players operation $frac_origin_Z retina.__variable__ = $Z retina.__variable__
scoreboard players operation $frac_origin_Z retina.__variable__ %= 480 retina.__int__
scoreboard players set $step_Z retina.__variable__ 0
execute if score $output_vec3.Z retina.__variable__ matches ..-1 run scoreboard players set $sign_Z retina.__variable__ -1
execute if score $output_vec3.Z retina.__variable__ matches 0.. run scoreboard players set $sign_Z retina.__variable__ 1
scoreboard players set $delta_Z retina.__variable__ 230400
scoreboard players operation $delta_Z retina.__variable__ /= $output_vec3.Z retina.__variable__
scoreboard players operation $delta_Z retina.__variable__ /= $sign_Z retina.__variable__
scoreboard players operation $distance_Z retina.__variable__ = $Z retina.__variable__
scoreboard players operation $distance_Z retina.__variable__ *= $sign_Z retina.__variable__
scoreboard players operation $distance_Z retina.__variable__ *= -1 retina.__int__
scoreboard players operation $distance_Z retina.__variable__ %= 480 retina.__int__
scoreboard players operation $distance_Z retina.__variable__ *= $delta_Z retina.__variable__
scoreboard players operation $distance_Z retina.__variable__ /= 480 retina.__int__
execute if score $output_vec3.Z retina.__variable__ matches 0 run scoreboard players set $delta_Z retina.__variable__ 2147483647
execute if score $output_vec3.Z retina.__variable__ matches 0 run scoreboard players set $distance_Z retina.__variable__ 2147483647
scoreboard players operation $int_Z retina.__variable__ = $Z retina.__variable__
scoreboard players operation $int_Z retina.__variable__ /= 480 retina.__int__
scoreboard players operation $frac_Z retina.__variable__ = $Z retina.__variable__
scoreboard players operation $frac_Z retina.__variable__ %= 480 retina.__int__
execute if score $debug_messages retina.__variable__ matches 1.. run tellraw @a ["",{"text":"Origin: "},{"text":"[","color":"yellow"},{"score":{"name":"$int_X","objective":"retina.__variable__"},"color":"yellow"},{"text":", ","color":"yellow"},{"score":{"name":"$int_Y","objective":"retina.__variable__"},"color":"yellow"},{"text":", ","color":"yellow"},{"score":{"name":"$int_Z","objective":"retina.__variable__"},"color":"yellow"},{"text":"]","color":"yellow"}]
scoreboard players set $step retina.__variable__ 0
scoreboard players set $end retina.__variable__ 0
execute store result score $offset_Y retina.__variable__ run data get entity @s Pos[1] -480
scoreboard players operation $offset_Y retina.__variable__ += $Y retina.__variable__
execute if score $offset_Y retina.__variable__ matches 776..778 positioned ~ ~1.62 ~ run function retina:traverse/loop
execute if score $offset_Y retina.__variable__ matches 608..610 positioned ~ ~1.27 ~ run function retina:traverse/loop
execute if score $offset_Y retina.__variable__ matches 192 positioned ~ ~0.4 ~ run function retina:traverse/loop