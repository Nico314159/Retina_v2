execute if score $debug_messages retina.__variable__ matches 1.. run tellraw @a ["",{"text":"Distances to each block: "},{"text":"[","color":"green"},{"score":{"name":"$distance_X","objective":"retina.__variable__"},"color":"green"},{"text":", ","color":"green"},{"score":{"name":"$distance_Y","objective":"retina.__variable__"},"color":"green"},{"text":", ","color":"green"},{"score":{"name":"$distance_Z","objective":"retina.__variable__"},"color":"green"},{"text":"]","color":"green"}]
execute if score $debug_messages retina.__variable__ matches 1.. run tellraw @a ["",{"text":"Closest direction: ","bold":false,"color":"white"},{"text":"Z","bold":true,"color":"aqua"}]
scoreboard players operation $distance_Z retina.__variable__ += $delta_Z retina.__variable__
scoreboard players operation $step_Z retina.__variable__ += $sign_Z retina.__variable__
scoreboard players operation $int_Z retina.__variable__ += $sign_Z retina.__variable__
scoreboard players operation $relative_X retina.__variable__ = $output_vec3.X retina.__variable__
scoreboard players operation $relative_X retina.__variable__ *= $shortest_distance retina.__variable__
scoreboard players operation $relative_X retina.__variable__ /= 480 retina.__int__
scoreboard players operation $X retina.__variable__ = $relative_X retina.__variable__
scoreboard players operation $X retina.__variable__ += $origin_X retina.__variable__
scoreboard players operation $frac_X retina.__variable__ = $X retina.__variable__
scoreboard players operation $frac_X retina.__variable__ %= 480 retina.__int__
scoreboard players operation $relative_Y retina.__variable__ = $output_vec3.Y retina.__variable__
scoreboard players operation $relative_Y retina.__variable__ *= $shortest_distance retina.__variable__
scoreboard players operation $relative_Y retina.__variable__ /= 480 retina.__int__
scoreboard players operation $Y retina.__variable__ = $relative_Y retina.__variable__
scoreboard players operation $Y retina.__variable__ += $origin_Y retina.__variable__
scoreboard players operation $frac_Y retina.__variable__ = $Y retina.__variable__
scoreboard players operation $frac_Y retina.__variable__ %= 480 retina.__int__
scoreboard players operation $relative_Z retina.__variable__ = $output_vec3.Z retina.__variable__
scoreboard players operation $relative_Z retina.__variable__ *= $shortest_distance retina.__variable__
scoreboard players operation $relative_Z retina.__variable__ /= 480 retina.__int__
scoreboard players operation $Z retina.__variable__ = $relative_Z retina.__variable__
scoreboard players operation $Z retina.__variable__ += $origin_Z retina.__variable__
scoreboard players operation $frac_Z retina.__variable__ = $Z retina.__variable__
scoreboard players operation $frac_Z retina.__variable__ %= 480 retina.__int__
execute if score $sign_Z retina.__variable__ matches -1 positioned ~0 ~0 ~-1 run function retina:check/main
execute if score $sign_Z retina.__variable__ matches 1 positioned ~0 ~0 ~1 run function retina:check/main