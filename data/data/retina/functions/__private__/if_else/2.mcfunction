scoreboard players add $motion_z __var__ 1000
execute if score $sign_z __variable__ matches -1 positioned ~0 ~0 ~-1 run function retina:check/main
execute if score $sign_z __var__ matches 1 positioned ~0 ~0 ~1 run function retina:check/main