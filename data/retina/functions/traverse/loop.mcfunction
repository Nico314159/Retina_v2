scoreboard players operation $shortest_distance __variable__ = $distance_X __variable__
scoreboard players operation $shortest_distance __variable__ < $distance_Y __variable__
scoreboard players operation $shortest_distance __variable__ < $distance_Z __variable__
execute if score $shortest_distance __variable__ = $distance_Z __variable__ run scoreboard players set $nearest_axis __variable__ 2
execute if score $shortest_distance __variable__ = $distance_Y __variable__ run scoreboard players set $nearest_axis __variable__ 1
execute if score $shortest_distance __variable__ = $distance_X __variable__ run scoreboard players set $nearest_axis __variable__ 0
execute if score $nearest_axis __variable__ matches 0 if score $step __variable__ < $max_depth __variable__ if score $end __variable__ matches 0 run function retina:traverse/x
execute if score $nearest_axis __variable__ matches 1 if score $step __variable__ < $max_depth __variable__ if score $end __variable__ matches 0 run function retina:traverse/y
execute if score $nearest_axis __variable__ matches 2 if score $step __variable__ < $max_depth __variable__ if score $end __variable__ matches 0 run function retina:traverse/z