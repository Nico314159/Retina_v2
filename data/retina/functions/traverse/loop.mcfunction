scoreboard players operation $shortest_distance retina.__variable__ = $distance_X retina.__variable__
scoreboard players operation $shortest_distance retina.__variable__ < $distance_Y retina.__variable__
scoreboard players operation $shortest_distance retina.__variable__ < $distance_Z retina.__variable__
execute if score $shortest_distance retina.__variable__ = $distance_Z retina.__variable__ run scoreboard players set $nearest_axis retina.__variable__ 2
execute if score $shortest_distance retina.__variable__ = $distance_Y retina.__variable__ run scoreboard players set $nearest_axis retina.__variable__ 1
execute if score $shortest_distance retina.__variable__ = $distance_X retina.__variable__ run scoreboard players set $nearest_axis retina.__variable__ 0
scoreboard players operation $prev_X retina.__variable__ = $int_X retina.__variable__
scoreboard players operation $prev_Y retina.__variable__ = $int_Y retina.__variable__
scoreboard players operation $prev_Z retina.__variable__ = $int_Z retina.__variable__
execute if score $debug_messages retina.__variable__ matches 2 run particle crit
execute if score $nearest_axis retina.__variable__ matches 0 if score $step retina.__variable__ < $max_depth retina.__variable__ if score $hit_block retina.__variable__ matches 0 if score $hit_entity retina.__variable__ matches 0 run function retina:traverse/x
execute if score $nearest_axis retina.__variable__ matches 1 if score $step retina.__variable__ < $max_depth retina.__variable__ if score $hit_block retina.__variable__ matches 0 if score $hit_entity retina.__variable__ matches 0 run function retina:traverse/y
execute if score $nearest_axis retina.__variable__ matches 2 if score $step retina.__variable__ < $max_depth retina.__variable__ if score $hit_block retina.__variable__ matches 0 if score $hit_entity retina.__variable__ matches 0 run function retina:traverse/z