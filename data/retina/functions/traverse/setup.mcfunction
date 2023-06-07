execute store result score $int_X __variable__ run data get entity @e[type=marker,tag=retina.height,limit=1] Pos[0] 1
scoreboard players operation $test_X __variable__ = $int_X __variable__
scoreboard players operation $test_X __variable__ /= $overflow_risk __variable__
execute unless score $test_X __variable__ matches -1..0 run tellraw @a ["",{"text":"[Error] ","color":"dark_red"},{"text":"Raycast X coordinate of ","color":"red"},{"score":{"name":"$int_X","objective":"__variable__"},"color":"red"},{"text":" is out of range (-","color":"red"},{"score":{"name":"$overflow_risk","objective":"__variable__"},"color":"red"},{"text":", ","color":"red"},{"score":{"name":"$overflow_risk","objective":"__variable__"},"color":"red"},{"text":")","color":"red"}]
execute unless score $test_X __variable__ matches -1..0 run return 0
execute store result score $int_Z __variable__ run data get entity @e[type=marker,tag=retina.height,limit=1] Pos[0] 1
scoreboard players operation $test_Z __variable__ = $int_Z __variable__
scoreboard players operation $test_Z __variable__ /= $overflow_risk __variable__
execute unless score $test_Z __variable__ matches -1..0 run tellraw @a ["",{"text":"[Error] ","color":"dark_red"},{"text":"Raycast Z coordinate of ","color":"red"},{"score":{"name":"$int_Z","objective":"__variable__"},"color":"red"},{"text":" is out of range (-","color":"red"},{"score":{"name":"$overflow_risk","objective":"__variable__"},"color":"red"},{"text":", ","color":"red"},{"score":{"name":"$overflow_risk","objective":"__variable__"},"color":"red"},{"text":")","color":"red"}]
execute unless score $test_Z __variable__ matches -1..0 run return 0
execute store result score $input_pitch __variable__ run data get entity @s Rotation[1] 10
execute store result score $input_yaw __variable__ run data get entity @s Rotation[0] 10
tellraw @a ["",{"text":"Pitch: ","bold":false,"color":"white"},{"score":{"name":"$input_pitch","objective":"__variable__"},"color":"red"},{"text":", ","color":"red"},{"text":"Yaw: ","bold":false,"color":"white"},{"score":{"name":"$input_yaw","objective":"__variable__"},"color":"red"}]
function retina:math/gimbal_to_vec
tellraw @a ["",{"text":"Facing Vector: "},{"text":"[","color":"gold"},{"score":{"name":"$output_vec3.X","objective":"__variable__"},"color":"gold"},{"text":", ","color":"gold"},{"score":{"name":"$output_vec3.Y","objective":"__variable__"},"color":"gold"},{"text":", ","color":"gold"},{"score":{"name":"$output_vec3.Z","objective":"__variable__"},"color":"gold"},{"text":"]","color":"gold"}]
execute anchored eyes run summon minecraft:marker ^ ^ ^ {Tags:["retina.height"]}
execute store result score $X __variable__ run data get entity @e[type=marker,tag=retina.height,limit=1] Pos[0] 1000
execute store result score $Y __variable__ run data get entity @e[type=marker,tag=retina.height,limit=1] Pos[1] 1000
execute store result score $Z __variable__ run data get entity @e[type=marker,tag=retina.height,limit=1] Pos[2] 1000
kill @e[type=marker,tag=retina.height,limit=1]
scoreboard players operation $origin_X __variable__ = $X __variable__
scoreboard players operation $frac_origin_X __variable__ = $X __variable__
scoreboard players operation $frac_origin_X __variable__ %= 1000 __int__
scoreboard players set $step_X __variable__ 0
execute if score $output_vec3.X __variable__ matches ..-1 run scoreboard players set $sign_X __variable__ -1
execute if score $output_vec3.X __variable__ matches 0.. run scoreboard players set $sign_X __variable__ 1
scoreboard players set $delta_X __variable__ 1000000
scoreboard players operation $delta_X __variable__ /= $output_vec3.X __variable__
scoreboard players operation $delta_X __variable__ /= $sign_X __variable__
scoreboard players operation $distance_X __variable__ = $X __variable__
scoreboard players operation $distance_X __variable__ *= $sign_X __variable__
scoreboard players operation $distance_X __variable__ *= -1 __int__
scoreboard players operation $distance_X __variable__ %= 1000 __int__
scoreboard players operation $distance_X __variable__ *= $delta_X __variable__
scoreboard players operation $distance_X __variable__ /= 1000 __int__
execute if score $output_vec3.X __variable__ matches 0 run scoreboard players set $delta_X __variable__ 2147483647
execute if score $output_vec3.X __variable__ matches 0 run scoreboard players set $distance_X __variable__ 2147483647
scoreboard players operation $int_X __variable__ = $X __variable__
scoreboard players operation $int_X __variable__ /= 1000 __int__
scoreboard players operation $frac_X __variable__ = $X __variable__
scoreboard players operation $frac_X __variable__ %= 1000 __int__
scoreboard players operation $origin_Y __variable__ = $Y __variable__
scoreboard players operation $frac_origin_Y __variable__ = $Y __variable__
scoreboard players operation $frac_origin_Y __variable__ %= 1000 __int__
scoreboard players set $step_Y __variable__ 0
execute if score $output_vec3.Y __variable__ matches ..-1 run scoreboard players set $sign_Y __variable__ -1
execute if score $output_vec3.Y __variable__ matches 0.. run scoreboard players set $sign_Y __variable__ 1
scoreboard players set $delta_Y __variable__ 1000000
scoreboard players operation $delta_Y __variable__ /= $output_vec3.Y __variable__
scoreboard players operation $delta_Y __variable__ /= $sign_Y __variable__
scoreboard players operation $distance_Y __variable__ = $Y __variable__
scoreboard players operation $distance_Y __variable__ *= $sign_Y __variable__
scoreboard players operation $distance_Y __variable__ *= -1 __int__
scoreboard players operation $distance_Y __variable__ %= 1000 __int__
scoreboard players operation $distance_Y __variable__ *= $delta_Y __variable__
scoreboard players operation $distance_Y __variable__ /= 1000 __int__
execute if score $output_vec3.Y __variable__ matches 0 run scoreboard players set $delta_Y __variable__ 2147483647
execute if score $output_vec3.Y __variable__ matches 0 run scoreboard players set $distance_Y __variable__ 2147483647
scoreboard players operation $int_Y __variable__ = $Y __variable__
scoreboard players operation $int_Y __variable__ /= 1000 __int__
scoreboard players operation $frac_Y __variable__ = $Y __variable__
scoreboard players operation $frac_Y __variable__ %= 1000 __int__
scoreboard players operation $origin_Z __variable__ = $Z __variable__
scoreboard players operation $frac_origin_Z __variable__ = $Z __variable__
scoreboard players operation $frac_origin_Z __variable__ %= 1000 __int__
scoreboard players set $step_Z __variable__ 0
execute if score $output_vec3.Z __variable__ matches ..-1 run scoreboard players set $sign_Z __variable__ -1
execute if score $output_vec3.Z __variable__ matches 0.. run scoreboard players set $sign_Z __variable__ 1
scoreboard players set $delta_Z __variable__ 1000000
scoreboard players operation $delta_Z __variable__ /= $output_vec3.Z __variable__
scoreboard players operation $delta_Z __variable__ /= $sign_Z __variable__
scoreboard players operation $distance_Z __variable__ = $Z __variable__
scoreboard players operation $distance_Z __variable__ *= $sign_Z __variable__
scoreboard players operation $distance_Z __variable__ *= -1 __int__
scoreboard players operation $distance_Z __variable__ %= 1000 __int__
scoreboard players operation $distance_Z __variable__ *= $delta_Z __variable__
scoreboard players operation $distance_Z __variable__ /= 1000 __int__
execute if score $output_vec3.Z __variable__ matches 0 run scoreboard players set $delta_Z __variable__ 2147483647
execute if score $output_vec3.Z __variable__ matches 0 run scoreboard players set $distance_Z __variable__ 2147483647
scoreboard players operation $int_Z __variable__ = $Z __variable__
scoreboard players operation $int_Z __variable__ /= 1000 __int__
scoreboard players operation $frac_Z __variable__ = $Z __variable__
scoreboard players operation $frac_Z __variable__ %= 1000 __int__
tellraw @a ["",{"text":"Origin: "},{"text":"[","color":"yellow"},{"score":{"name":"$int_X","objective":"__variable__"},"color":"yellow"},{"text":", ","color":"yellow"},{"score":{"name":"$int_Y","objective":"__variable__"},"color":"yellow"},{"text":", ","color":"yellow"},{"score":{"name":"$int_Z","objective":"__variable__"},"color":"yellow"},{"text":"]","color":"yellow"}]
scoreboard players set $step __variable__ 0
scoreboard players set $end __variable__ 0
execute store result score $offset_Y __variable__ run data get entity @s Pos[1] -1000
scoreboard players operation $offset_Y __variable__ += $Y __variable__
execute if score $offset_Y __variable__ matches 1619..1621 positioned ~ ~1.62 ~ run function retina:traverse/loop
execute if score $offset_Y __variable__ matches 1269..1271 positioned ~ ~1.27 ~ run function retina:traverse/loop
execute if score $offset_Y __variable__ matches 399..401 positioned ~ ~0.4 ~ run function retina:traverse/loop