scoreboard players add $motion_y __variable__ 1000
scoreboard players operation $y __variable__ += $sign_y __variable__
execute if score $sign_y __variable__ matches -1 positioned ~0 ~-1 ~0 run function retina:check/main
execute if score $sign_y __variable__ matches 1 positioned ~0 ~1 ~0 run function retina:check/main