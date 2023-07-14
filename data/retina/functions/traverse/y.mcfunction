execute if score $debug_messages retina.__variable__ matches 1.. run tellraw @a ["",{"text":"Distances to each block: "},{"text":"[","color":"green"},{"score":{"name":"$distance_X","objective":"retina.__variable__"},"color":"green"},{"text":", ","color":"green"},{"score":{"name":"$distance_Y","objective":"retina.__variable__"},"color":"green"},{"text":", ","color":"green"},{"score":{"name":"$distance_Z","objective":"retina.__variable__"},"color":"green"},{"text":"]","color":"green"}]
execute if score $debug_messages retina.__variable__ matches 1.. run tellraw @a ["",{"text":"Closest direction: ","bold":false,"color":"white"},{"text":"Y","bold":true,"color":"aqua"}]
scoreboard players operation $distance_Y retina.__variable__ += $delta_Y retina.__variable__
scoreboard players operation $step_Y retina.__variable__ += $sign_Y retina.__variable__
scoreboard players operation $int_Y retina.__variable__ += $sign_Y retina.__variable__
execute if score $sign_Y retina.__variable__ matches -1 positioned ~0 ~-1 ~0 run function retina:check/main
execute if score $sign_Y retina.__variable__ matches 1 positioned ~0 ~1 ~0 run function retina:check/main