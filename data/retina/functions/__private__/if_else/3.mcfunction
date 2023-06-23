execute if score $output_vec3.Y retina.__variable__ matches 0 run return 0
scoreboard players operation $distance retina.__variable__ = $Y0 retina.__variable__
scoreboard players operation $distance retina.__variable__ /= $output_vec3.Y retina.__variable__
execute unless score $distance retina.__variable__ < $min_distance_to_surface retina.__variable__ run return 0
scoreboard players operation $X_intersection retina.__variable__ = $distance retina.__variable__
scoreboard players operation $X_intersection retina.__variable__ *= $output_vec3.X retina.__variable__
scoreboard players operation $Y_intersection retina.__variable__ = $Y0 retina.__variable__
scoreboard players operation $Z_intersection retina.__variable__ = $distance retina.__variable__
scoreboard players operation $Z_intersection retina.__variable__ *= $output_vec3.Z retina.__variable__
execute if score $X_intersection retina.__variable__ >= $X0 retina.__variable__ if score $X_intersection retina.__variable__ <= $X1 retina.__variable__ if score $Z_intersection retina.__variable__ >= $Z0 retina.__variable__ if score $Z_intersection retina.__variable__ <= $Z1 retina.__variable__ run function retina:find_closest_surface/ray_intersects_with_surface
execute if score $X_intersection retina.__variable__ >= $X0 retina.__variable__ if score $X_intersection retina.__variable__ <= $X1 retina.__variable__ if score $Z_intersection retina.__variable__ >= $Z0 retina.__variable__ if score $Z_intersection retina.__variable__ <= $Z1 retina.__variable__ run data modify storage retina:output HitFace set value "Top"