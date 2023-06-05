scoreboard players set $min_distance_to_surface __variable__ 1733
execute if score $nearest_axis __variable__ matches 0 if score $sign_X __variable__ matches 1 run function retina:find_closest_surface/west
execute if score $nearest_axis __variable__ matches 0 if score $sign_X __variable__ matches -1 run function retina:find_closest_surface/east
execute if score $nearest_axis __variable__ matches 1 if score $sign_Y __variable__ matches 1 run function retina:find_closest_surface/bottom
execute if score $nearest_axis __variable__ matches 1 if score $sign_Y __variable__ matches -1 run function retina:find_closest_surface/top
execute if score $nearest_axis __variable__ matches 2 if score $sign_Z __variable__ matches 1 run function retina:find_closest_surface/north
execute if score $nearest_axis __variable__ matches 2 if score $sign_Z __variable__ matches -1 run function retina:find_closest_surface/south