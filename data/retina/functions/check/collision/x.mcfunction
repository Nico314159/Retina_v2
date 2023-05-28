tellraw @a {"text":"Block hit direction: X","bold":true,"color":"white"}
scoreboard players set $collision_x __variable__ 1
scoreboard players remove $distance_x __variable__ 1001
scoreboard players set $motion_end __variable__ 1