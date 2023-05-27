scoreboard players set $collision_z __variable__ 1
scoreboard players remove $motion_z __variable__ 1001
scoreboard players set $distance_z __variable__ 2147483647
execute if score $motion_halt_boolean __variable__ matches 1.. run scoreboard players set $motion_end __variable__ 1