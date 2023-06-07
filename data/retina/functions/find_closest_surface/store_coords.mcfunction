execute store result score $X0 __variable__ run data get storage retina:data List[-1][0]
scoreboard players set $k __variable__ 1000
scoreboard players operation $k __variable__ *= $steps_X __variable__
scoreboard players operation $k __variable__ -= $frac_origin_X __variable__
scoreboard players operation $X0 __variable__ += $k __variable__
execute store result score $Y0 __variable__ run data get storage retina:data List[-1][1]
scoreboard players set $k __variable__ 1000
scoreboard players operation $k __variable__ *= $steps_Y __variable__
scoreboard players operation $k __variable__ -= $frac_origin_Y __variable__
scoreboard players operation $Y0 __variable__ += $k __variable__
execute store result score $Z0 __variable__ run data get storage retina:data List[-1][2]
scoreboard players set $k __variable__ 1000
scoreboard players operation $k __variable__ *= $steps_Z __variable__
scoreboard players operation $k __variable__ -= $frac_origin_Z __variable__
scoreboard players operation $Z0 __variable__ += $k __variable__
execute store result score $X1 __variable__ run data get storage retina:data List[-1][3]
scoreboard players set $k __variable__ 1000
scoreboard players operation $k __variable__ *= $steps_X __variable__
scoreboard players operation $k __variable__ -= $frac_origin_X __variable__
scoreboard players operation $X1 __variable__ += $k __variable__
execute store result score $Y1 __variable__ run data get storage retina:data List[-1][4]
scoreboard players set $k __variable__ 1000
scoreboard players operation $k __variable__ *= $steps_Y __variable__
scoreboard players operation $k __variable__ -= $frac_origin_Y __variable__
scoreboard players operation $Y1 __variable__ += $k __variable__
execute store result score $Z1 __variable__ run data get storage retina:data List[-1][5]
scoreboard players set $k __variable__ 1000
scoreboard players operation $k __variable__ *= $steps_Z __variable__
scoreboard players operation $k __variable__ -= $frac_origin_Z __variable__
scoreboard players operation $Z1 __variable__ += $k __variable__