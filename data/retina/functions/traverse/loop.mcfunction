scoreboard players operation $shortest_distance __variable__ = $distance_x __variable__
scoreboard players operation $shortest_distance __variable__ < $distance_y __variable__
scoreboard players operation $shortest_distance __variable__ < $distance_z __variable__
execute if score $shortest_distance __variable__ = $distance_z __variable__ run scoreboard players set $nearest_axis __variable__ 2
execute if score $shortest_distance __variable__ = $distance_y __variable__ run scoreboard players set $nearest_axis __variable__ 1
execute if score $shortest_distance __variable__ = $distance_x __variable__ run scoreboard players set $nearest_axis __variable__ 0
execute if score $nearest_axis __variable__ matches 0 if score $step __variable__ matches ..299 run function retina:traverse/x
execute if score $nearest_axis __variable__ matches 1 if score $step __variable__ matches ..299 run function retina:traverse/y
execute if score $nearest_axis __variable__ matches 2 if score $step __variable__ matches ..299 run function retina:traverse/z