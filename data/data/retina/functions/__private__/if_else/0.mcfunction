scoreboard players add $motion_x __var__ 1000
execute if score $sign_x __variable__ matches -1 positioned ~-1 ~0 ~0 run function retina:check/main
execute if score $sign_x __var__ matches 1 positioned ~1 ~0 ~0 run function retina:check/main