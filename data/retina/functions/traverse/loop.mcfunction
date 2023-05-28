scoreboard players operation $shortest_distance __variable__ = $distance_x __variable__
scoreboard players operation $shortest_distance __variable__ < $distance_y __variable__
scoreboard players operation $shortest_distance __variable__ < $distance_z __variable__
execute if score $shortest_distance __variable__ = $distance_z __variable__ run scoreboard players set $nearest_axis __variable__ 2
execute if score $shortest_distance __variable__ = $distance_y __variable__ run scoreboard players set $nearest_axis __variable__ 1
execute if score $shortest_distance __variable__ = $distance_x __variable__ run scoreboard players set $nearest_axis __variable__ 0
function retina:__private__/switch_case/0