scoreboard players operation $output retina.__variable__ = $input retina.__variable__
scoreboard players remove $output retina.__variable__ 1800
scoreboard players operation $output retina.__variable__ %= 1800 retina.__int__
scoreboard players remove $output retina.__variable__ 900
scoreboard players operation $output retina.__variable__ *= $output retina.__variable__
scoreboard players operation $trig_0 retina.__variable__ = $output retina.__variable__
scoreboard players add $trig_0 retina.__variable__ 3240000
scoreboard players operation $trig_0 retina.__variable__ /= 480 retina.__int__
scoreboard players operation $output retina.__variable__ *= -4 retina.__int__
scoreboard players add $output retina.__variable__ 3240000
scoreboard players operation $output retina.__variable__ /= $trig_0 retina.__variable__
scoreboard players operation $trig_0 retina.__variable__ = $input retina.__variable__
scoreboard players operation $trig_0 retina.__variable__ %= 3600 retina.__int__
execute if score $trig_0 retina.__variable__ matches 1800.. run scoreboard players operation $output retina.__variable__ *= -1 retina.__int__