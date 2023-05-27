scoreboard players operation $output __var__ = $input __var__
scoreboard players remove $output __var__ 900
scoreboard players operation $output __var__ %= 1800 __const__
scoreboard players remove $output __var__ 900
scoreboard players operation $output __var__ *= $output __var__
scoreboard players operation $trig_0 __var__ = $output __var__
scoreboard players add $trig_0 __var__ 3240000
scoreboard players operation $trig_0 __var__ /= 1000 __const__
scoreboard players operation $output __var__ *= -4 __const__
scoreboard players add $output __var__ 3240000
scoreboard players operation $output __var__ /= $trig_0 __var__
scoreboard players operation $trig_0 __var__ = $input __var__
scoreboard players add $trig_0 __var__ 900
scoreboard players operation $trig_0 __var__ %= 3600 __const__
execute if score $trig_0 __var__ matches 1800.. run scoreboard players operation $output __var__ *= -1 __const__