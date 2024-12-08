execute store result score $X0 retina.__variable__ run data get storage retina:data List[-1][0] 480
execute store result score $X1 retina.__variable__ run data get storage retina:data List[-1][3] 480
scoreboard players set $t_X retina.__variable__ 480
scoreboard players operation $t_X retina.__variable__ *= $step_X retina.__variable__
scoreboard players operation $t_X retina.__variable__ -= $frac_origin_X retina.__variable__
scoreboard players operation $X0 retina.__variable__ += $t_X retina.__variable__
scoreboard players operation $X1 retina.__variable__ += $t_X retina.__variable__
execute store result score $Y0 retina.__variable__ run data get storage retina:data List[-1][1] 480
execute store result score $Y1 retina.__variable__ run data get storage retina:data List[-1][4] 480
scoreboard players set $t_Y retina.__variable__ 480
scoreboard players operation $t_Y retina.__variable__ *= $step_Y retina.__variable__
scoreboard players operation $t_Y retina.__variable__ -= $frac_origin_Y retina.__variable__
scoreboard players operation $Y0 retina.__variable__ += $t_Y retina.__variable__
scoreboard players operation $Y1 retina.__variable__ += $t_Y retina.__variable__
execute store result score $Z0 retina.__variable__ run data get storage retina:data List[-1][2] 480
execute store result score $Z1 retina.__variable__ run data get storage retina:data List[-1][5] 480
scoreboard players set $t_Z retina.__variable__ 480
scoreboard players operation $t_Z retina.__variable__ *= $step_Z retina.__variable__
scoreboard players operation $t_Z retina.__variable__ -= $frac_origin_Z retina.__variable__
scoreboard players operation $Z0 retina.__variable__ += $t_Z retina.__variable__
scoreboard players operation $Z1 retina.__variable__ += $t_Z retina.__variable__
scoreboard players operation $test retina.__variable__ = $Y1 retina.__variable__
scoreboard players operation $test retina.__variable__ -= $Y0 retina.__variable__
execute if score $test retina.__variable__ matches 480.. run return run scoreboard players set $head_Y retina.__variable__ 2147483647
scoreboard players operation $head_Y retina.__variable__ += $t_Y retina.__variable__
scoreboard players remove $head_Y retina.__variable__ 480