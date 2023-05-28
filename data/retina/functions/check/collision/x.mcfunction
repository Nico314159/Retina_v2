tellraw @a ["",{"text":"Block hit direction: ","bold":true,"color":"white"},{"text":"X","bold":true,"color":"light_purple"}]
scoreboard players set $collision_x __variable__ 1
scoreboard players remove $distance_x __variable__ 1001
scoreboard players set $motion_end __variable__ 1