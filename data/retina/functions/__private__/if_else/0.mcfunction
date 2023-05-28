scoreboard players add $motion_x __variable__ 1000
scoreboard players operation $x __variable__ += $sign_x __variable__
execute if score $sign_x __variable__ matches -1 positioned ~-1 ~0 ~0 run function retina:check/main
execute if score $sign_x __variable__ matches 1 positioned ~1 ~0 ~0 run function retina:check/main