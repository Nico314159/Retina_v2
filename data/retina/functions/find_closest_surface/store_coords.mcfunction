execute store result score $X0 retina.__variable__ run data get storage retina:data List[-1][0]
scoreboard players set $k retina.__variable__ 192
scoreboard players operation $k retina.__variable__ *= $step_X retina.__variable__
scoreboard players operation $k retina.__variable__ -= $frac_origin_X retina.__variable__
scoreboard players operation $X0 retina.__variable__ += $k retina.__variable__
execute store result score $Y0 retina.__variable__ run data get storage retina:data List[-1][1]
scoreboard players set $k retina.__variable__ 192
scoreboard players operation $k retina.__variable__ *= $step_Y retina.__variable__
scoreboard players operation $k retina.__variable__ -= $frac_origin_Y retina.__variable__
scoreboard players operation $Y0 retina.__variable__ += $k retina.__variable__
execute store result score $Z0 retina.__variable__ run data get storage retina:data List[-1][2]
scoreboard players set $k retina.__variable__ 192
scoreboard players operation $k retina.__variable__ *= $step_Z retina.__variable__
scoreboard players operation $k retina.__variable__ -= $frac_origin_Z retina.__variable__
scoreboard players operation $Z0 retina.__variable__ += $k retina.__variable__
execute store result score $X1 retina.__variable__ run data get storage retina:data List[-1][3]
scoreboard players set $k retina.__variable__ 192
scoreboard players operation $k retina.__variable__ *= $step_X retina.__variable__
scoreboard players operation $k retina.__variable__ -= $frac_origin_X retina.__variable__
scoreboard players operation $X1 retina.__variable__ += $k retina.__variable__
execute store result score $Y1 retina.__variable__ run data get storage retina:data List[-1][4]
scoreboard players set $k retina.__variable__ 192
scoreboard players operation $k retina.__variable__ *= $step_Y retina.__variable__
scoreboard players operation $k retina.__variable__ -= $frac_origin_Y retina.__variable__
scoreboard players operation $Y1 retina.__variable__ += $k retina.__variable__
execute store result score $Z1 retina.__variable__ run data get storage retina:data List[-1][5]
scoreboard players set $k retina.__variable__ 192
scoreboard players operation $k retina.__variable__ *= $step_Z retina.__variable__
scoreboard players operation $k retina.__variable__ -= $frac_origin_Z retina.__variable__
scoreboard players operation $Z1 retina.__variable__ += $k retina.__variable__