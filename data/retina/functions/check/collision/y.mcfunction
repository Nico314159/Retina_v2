tellraw @a ["",{"text":"Block hit direction: ","bold":true,"color":"white"},{"text":"Y","bold":true,"color":"light_purple"}]
scoreboard players set $collision_y __variable__ 1
scoreboard players remove $distance_y __variable__ 1001
scoreboard players set $motion_end __variable__ 1