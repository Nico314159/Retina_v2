scoreboard players set $min_distance_to_surface __variable__ 1733
execute unless score $sign_X __variable__ matches 1 if score $end __variable__ matches 0 run function retina:find_closest_surface/east
execute unless score $sign_X __variable__ matches -1 if score $end __variable__ matches 0 run function retina:find_closest_surface/west
execute unless score $sign_Y __variable__ matches 1 if score $end __variable__ matches 0 run function retina:find_closest_surface/top
execute unless score $sign_Y __variable__ matches -1 if score $end __variable__ matches 0 run function retina:find_closest_surface/bottom
execute unless score $sign_Z __variable__ matches 1 if score $end __variable__ matches 0 run function retina:find_closest_surface/south
execute unless score $sign_Z __variable__ matches -1 if score $end __variable__ matches 0 run function retina:find_closest_surface/north