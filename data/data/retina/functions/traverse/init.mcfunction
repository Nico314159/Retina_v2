scoreboard players set $delta_x __var__ 1000000
scoreboard players set $delta_y __var__ 1000000
scoreboard players set $delta_z __var__ 1000000
scoreboard players operation $delta_x __var__ /= $motion_limit_x __var__
scoreboard players operation $delta_y __var__ /= $motion_limit_y __var__
scoreboard players operation $delta_z __var__ /= $motion_limit_z __var__
execute if score $motion_limit_x __var__ matches 0 run scoreboard players set $delta_x __var__ 2147483647
execute if score $motion_limit_y __var__ matches 0 run scoreboard players set $delta_y __var__ 2147483647
execute if score $motion_limit_z __var__ matches 0 run scoreboard players set $delta_z __var__ 2147483647
scoreboard players operation $motion_x __var__ = $x __var__
scoreboard players operation $motion_y __var__ = $y __var__
scoreboard players operation $motion_z __var__ = $z __var__
scoreboard players operation $motion_x __var__ %= 1000 __const__
scoreboard players operation $motion_y __var__ %= 1000 __const__
scoreboard players operation $motion_z __var__ %= 1000 __const__
execute if score $sign_x __var__ matches 1 run scoreboard players operation $motion_x __var__ *= -1 __const__
execute if score $sign_y __var__ matches 1 run scoreboard players operation $motion_y __var__ *= -1 __const__
execute if score $sign_z __var__ matches 1 run scoreboard players operation $motion_z __var__ *= -1 __const__
execute if score $sign_x __var__ matches 1 run scoreboard players add $motion_x __var__ 1000
execute if score $sign_y __var__ matches 1 run scoreboard players add $motion_y __var__ 1000
execute if score $sign_z __var__ matches 1 run scoreboard players add $motion_z __var__ 1000
scoreboard players operation $distance_x __var__ = $delta_x __var__
scoreboard players operation $distance_y __var__ = $delta_y __var__
scoreboard players operation $distance_z __var__ = $delta_z __var__
scoreboard players operation $distance_x __var__ *= $motion_x __var__
scoreboard players operation $distance_y __var__ *= $motion_y __var__
scoreboard players operation $distance_z __var__ *= $motion_z __var__
scoreboard players operation $distance_x __var__ /= 1000 __const__
scoreboard players operation $distance_y __var__ /= 1000 __const__
scoreboard players operation $distance_z __var__ /= 1000 __const__
execute if score $motion_limit_x __var__ matches 0 run scoreboard players set $distance_x __var__ 2147483647
execute if score $motion_limit_y __var__ matches 0 run scoreboard players set $distance_y __var__ 2147483647
execute if score $motion_limit_z __var__ matches 0 run scoreboard players set $distance_z __var__ 2147483647
function retina:traverse/main