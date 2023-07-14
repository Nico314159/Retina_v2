execute if score $debug_messages retina.__variable__ matches 1.. run tellraw @a ["",{"text":"Distances to each block: "},{"text":"[","color":"green"},{"score":{"name":"$distance_X","objective":"retina.__variable__"},"color":"green"},{"text":", ","color":"green"},{"score":{"name":"$distance_Y","objective":"retina.__variable__"},"color":"green"},{"text":", ","color":"green"},{"score":{"name":"$distance_Z","objective":"retina.__variable__"},"color":"green"},{"text":"]","color":"green"}]
execute if score $debug_messages retina.__variable__ matches 1.. run tellraw @a ["",{"text":"Closest direction: ","bold":false,"color":"white"},{"text":"Z","bold":true,"color":"aqua"}]
scoreboard players operation $distance_Z retina.__variable__ += $delta_Z retina.__variable__
scoreboard players operation $step_Z retina.__variable__ += $sign_Z retina.__variable__
scoreboard players operation $int_Z retina.__variable__ += $sign_Z retina.__variable__
execute if score $sign_Z retina.__variable__ matches -1 positioned ~0 ~0 ~-1 run function retina:check/main
execute if score $sign_Z retina.__variable__ matches 1 positioned ~0 ~0 ~1 run function retina:check/main