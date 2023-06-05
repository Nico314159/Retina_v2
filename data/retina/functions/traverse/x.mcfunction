tellraw @a ["",{"text":"Distances to each block: "},{"text":"[","color":"green"},{"score":{"name":"$distance_X","objective":"__variable__"},"color":"green"},{"text":", ","color":"green"},{"score":{"name":"$distance_Y","objective":"__variable__"},"color":"green"},{"text":", ","color":"green"},{"score":{"name":"$distance_Z","objective":"__variable__"},"color":"green"},{"text":"]","color":"green"}]
tellraw @a ["",{"text":"Closest direction: ","bold":false,"color":"white"},{"text":"X","bold":true,"color":"aqua"}]
scoreboard players operation $distance_X __variable__ += $delta_X __variable__
scoreboard players operation $DX __variable__ = $X __variable__
scoreboard players operation $DX __variable__ %= 1000 __int__
scoreboard players operation $DX __variable__ *= -1 __int__
execute if score $sign_X __variable__ matches 1 run scoreboard players add $DX __variable__ 1000
execute if score $sign_X __variable__ matches -1 if score $DX __variable__ matches 0 run scoreboard players set $DX __variable__ -1000
scoreboard players operation $DX __variable__ = $DX __variable__
scoreboard players operation $DX __variable__ *= $delta_X __variable__
scoreboard players operation $DX __variable__ *= $sign_X __variable__
scoreboard players operation $DX __variable__ /= $delta_X __variable__
scoreboard players operation $DX __variable__ /= $sign_X __variable__
scoreboard players operation $X __variable__ += $DX __variable__
scoreboard players operation $int_X __variable__ = $X __variable__
scoreboard players operation $int_X __variable__ /= 1000 __int__
scoreboard players operation $frac_X __variable__ = $int_X __variable__
scoreboard players operation $frac_X __variable__ *= -1000 __int__
scoreboard players operation $frac_X __variable__ += $X __variable__
scoreboard players operation $DY __variable__ = $DX __variable__
scoreboard players operation $DY __variable__ *= $delta_X __variable__
scoreboard players operation $DY __variable__ *= $sign_X __variable__
scoreboard players operation $DY __variable__ /= $delta_Y __variable__
scoreboard players operation $DY __variable__ /= $sign_Y __variable__
scoreboard players operation $Y __variable__ += $DY __variable__
scoreboard players operation $int_Y __variable__ = $Y __variable__
scoreboard players operation $int_Y __variable__ /= 1000 __int__
scoreboard players operation $frac_Y __variable__ = $int_Y __variable__
scoreboard players operation $frac_Y __variable__ *= -1000 __int__
scoreboard players operation $frac_Y __variable__ += $Y __variable__
scoreboard players operation $DZ __variable__ = $DX __variable__
scoreboard players operation $DZ __variable__ *= $delta_X __variable__
scoreboard players operation $DZ __variable__ *= $sign_X __variable__
scoreboard players operation $DZ __variable__ /= $delta_Z __variable__
scoreboard players operation $DZ __variable__ /= $sign_Z __variable__
scoreboard players operation $Z __variable__ += $DZ __variable__
scoreboard players operation $int_Z __variable__ = $Z __variable__
scoreboard players operation $int_Z __variable__ /= 1000 __int__
scoreboard players operation $frac_Z __variable__ = $int_Z __variable__
scoreboard players operation $frac_Z __variable__ *= -1000 __int__
scoreboard players operation $frac_Z __variable__ += $Z __variable__
execute if score $sign_X __variable__ matches -1 positioned ~-1 ~0 ~0 run function retina:check/main
execute if score $sign_X __variable__ matches 1 positioned ~1 ~0 ~0 run function retina:check/main