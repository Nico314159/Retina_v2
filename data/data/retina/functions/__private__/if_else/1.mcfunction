scoreboard players add $motion_y __var__ 1000
execute if score $sign_y __variable__ matches -1 positioned ~0 ~-1 ~0 run function retina:check/main
execute if score $sign_y __var__ matches 1 positioned ~0 ~1 ~0 run function retina:check/main