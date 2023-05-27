execute if score $motion_x __var__ > $motion_limit_x __var__ run scoreboard players set $distance_x __var__ 2147483647
execute if score $motion_y __var__ > $motion_limit_y __var__ run scoreboard players set $distance_y __var__ 2147483647
execute if score $motion_z __var__ > $motion_limit_z __var__ run scoreboard players set $distance_z __var__ 2147483647
execute if score $distance_x __var__ matches 2147483647 if score $distance_y __var__ matches 2147483647 if score $distance_z __var__ matches 2147483647 run scoreboard players set $motion_end __var__ 1
scoreboard players operation $shortest_distance __var__ = $distance_x __var__
scoreboard players operation $shortest_distance __var__ < $distance_y __var__
scoreboard players operation $shortest_distance __var__ < $distance_z __var__
execute if score $shortest_distance __var__ = $distance_z __var__ run scoreboard players set $nearest_axis __var__ 2
execute if score $shortest_distance __var__ = $distance_y __var__ run scoreboard players set $nearest_axis __var__ 1
execute if score $shortest_distance __var__ = $distance_x __var__ run scoreboard players set $nearest_axis __var__ 0
function retina:__private__/switch_case/0
execute if score $motion_end __var__ matches 0 run function retina:traverse/main