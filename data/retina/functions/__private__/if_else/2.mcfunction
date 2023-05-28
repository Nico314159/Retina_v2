scoreboard players operation $z __variable__ += $sign_z __variable__
execute if score $sign_z __variable__ matches -1 positioned ~0 ~0 ~-1 run function retina:check/main
execute if score $sign_z __variable__ matches 1 positioned ~0 ~0 ~1 run function retina:check/main