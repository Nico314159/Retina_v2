scoreboard players set $collision_z __var__ 1
scoreboard players remove $motion_z __var__ 1001
scoreboard players set $distance_z __var__ 2147483647
execute if score $motion_halt_boolean __var__ matches 1.. run scoreboard players set $motion_end __var__ 1