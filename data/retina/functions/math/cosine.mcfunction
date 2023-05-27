scoreboard players operation $output __variable__ = $input __variable__
scoreboard players remove $output __variable__ 900
scoreboard players operation $output __variable__ %= 1800 __int__
scoreboard players remove $output __variable__ 900
scoreboard players operation $output __variable__ *= $output __variable__
scoreboard players operation $trig_0 __variable__ = $output __variable__
scoreboard players add $trig_0 __variable__ 3240000
scoreboard players operation $trig_0 __variable__ /= 1000 __int__
scoreboard players operation $output __variable__ *= -4 __int__
scoreboard players add $output __variable__ 3240000
scoreboard players operation $output __variable__ /= $trig_0 __variable__
scoreboard players operation $trig_0 __variable__ = $input __variable__
scoreboard players add $trig_0 __variable__ 900
scoreboard players operation $trig_0 __variable__ %= 3600 __int__
execute if score $trig_0 __variable__ matches 1800.. run scoreboard players operation $output __variable__ *= -1 __int__