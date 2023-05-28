execute if score $distance_x __variable__ matches 2147483647 if score $distance_y __variable__ matches 2147483647 if score $distance_z __variable__ matches 2147483647 run scoreboard players set $motion_end __variable__ 1
scoreboard players operation $shortest_distance __variable__ = $distance_x __variable__
scoreboard players operation $shortest_distance __variable__ < $distance_y __variable__
scoreboard players operation $shortest_distance __variable__ < $distance_z __variable__
execute if score $shortest_distance __variable__ = $distance_z __variable__ run scoreboard players set $nearest_axis __variable__ 2
execute if score $shortest_distance __variable__ = $distance_y __variable__ run scoreboard players set $nearest_axis __variable__ 1
execute if score $shortest_distance __variable__ = $distance_x __variable__ run scoreboard players set $nearest_axis __variable__ 0
function retina:__private__/switch_case/0
execute if score $motion_end __variable__ matches 0 if score $step __variable__ matches ..299 run function retina:traverse/loop