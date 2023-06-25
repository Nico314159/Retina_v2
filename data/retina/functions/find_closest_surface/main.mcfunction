scoreboard players set $min_distance_to_surface retina.__variable__ 832
execute unless score $sign_X retina.__variable__ matches 1 if score $end retina.__variable__ matches 0 run function retina:find_closest_surface/east
execute unless score $sign_X retina.__variable__ matches -1 if score $end retina.__variable__ matches 0 run function retina:find_closest_surface/west
execute unless score $sign_Y retina.__variable__ matches 1 if score $end retina.__variable__ matches 0 run function retina:find_closest_surface/top
execute unless score $sign_Y retina.__variable__ matches -1 if score $end retina.__variable__ matches 0 run function retina:find_closest_surface/bottom
execute unless score $sign_Z retina.__variable__ matches 1 if score $end retina.__variable__ matches 0 run function retina:find_closest_surface/south
execute unless score $sign_Z retina.__variable__ matches -1 if score $end retina.__variable__ matches 0 run function retina:find_closest_surface/north