execute if score $debug_messages __variable__ matches 1.. run tellraw @a ["",{"text":"Distances to each block: "},{"text":"[","color":"green"},{"score":{"name":"$distance_X","objective":"__variable__"},"color":"green"},{"text":", ","color":"green"},{"score":{"name":"$distance_Y","objective":"__variable__"},"color":"green"},{"text":", ","color":"green"},{"score":{"name":"$distance_Z","objective":"__variable__"},"color":"green"},{"text":"]","color":"green"}]
execute if score $debug_messages __variable__ matches 1.. run tellraw @a ["",{"text":"Closest direction: ","bold":false,"color":"white"},{"text":"Y","bold":true,"color":"aqua"}]
scoreboard players operation $distance_Y __variable__ += $delta_Y __variable__
scoreboard players operation $step_Y __variable__ += $sign_Y __variable__
scoreboard players operation $int_Y __variable__ += $sign_Y __variable__
scoreboard players operation $relative_X __variable__ = $output_vec3.X __variable__
scoreboard players operation $relative_X __variable__ *= $shortest_distance __variable__
scoreboard players operation $relative_X __variable__ /= 192 __int__
scoreboard players operation $X __variable__ = $relative_X __variable__
scoreboard players operation $X __variable__ += $origin_X __variable__
scoreboard players operation $frac_X __variable__ = $X __variable__
scoreboard players operation $frac_X __variable__ %= 192 __int__
scoreboard players operation $relative_Y __variable__ = $output_vec3.Y __variable__
scoreboard players operation $relative_Y __variable__ *= $shortest_distance __variable__
scoreboard players operation $relative_Y __variable__ /= 192 __int__
scoreboard players operation $Y __variable__ = $relative_Y __variable__
scoreboard players operation $Y __variable__ += $origin_Y __variable__
scoreboard players operation $frac_Y __variable__ = $Y __variable__
scoreboard players operation $frac_Y __variable__ %= 192 __int__
scoreboard players operation $relative_Z __variable__ = $output_vec3.Z __variable__
scoreboard players operation $relative_Z __variable__ *= $shortest_distance __variable__
scoreboard players operation $relative_Z __variable__ /= 192 __int__
scoreboard players operation $Z __variable__ = $relative_Z __variable__
scoreboard players operation $Z __variable__ += $origin_Z __variable__
scoreboard players operation $frac_Z __variable__ = $Z __variable__
scoreboard players operation $frac_Z __variable__ %= 192 __int__
execute if score $sign_Y __variable__ matches -1 positioned ~0 ~-1 ~0 run function retina:check/main
execute if score $sign_Y __variable__ matches 1 positioned ~0 ~1 ~0 run function retina:check/main