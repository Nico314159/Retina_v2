tellraw @a ["",{"text":"Closest direction: ","bold":false,"color":"white"},{"text":"Y","bold":true,"color":"aqua"}]
scoreboard players operation $distance_y __variable__ += $delta_y __variable__
execute if score $motion_end __variable__ matches 0 run function retina:__private__/if_else/1