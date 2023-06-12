execute if score $output_vec3.Y __variable__ matches 0 run return 0
scoreboard players operation $distance __variable__ = $Y0 __variable__
scoreboard players operation $distance __variable__ /= $output_vec3.Y __variable__
execute unless score $distance __variable__ < $min_distance_to_surface __variable__ run return 0
scoreboard players operation $X_intersection __variable__ = $distance __variable__
scoreboard players operation $X_intersection __variable__ *= $output_vec3.X __variable__
scoreboard players operation $Y_intersection __variable__ = $Y0 __variable__
scoreboard players operation $Z_intersection __variable__ = $distance __variable__
scoreboard players operation $Z_intersection __variable__ *= $output_vec3.Z __variable__
execute if score $X_intersection __variable__ >= $X0 __variable__ if score $X_intersection __variable__ <= $X1 __variable__ if score $Z_intersection __variable__ >= $Z0 __variable__ if score $Z_intersection __variable__ <= $Z1 __variable__ run function retina:find_closest_surface/ray_intersects_with_surface
execute if score $X_intersection __variable__ >= $X0 __variable__ if score $X_intersection __variable__ <= $X1 __variable__ if score $Z_intersection __variable__ >= $Z0 __variable__ if score $Z_intersection __variable__ <= $Z1 __variable__ run data modify storage retina:output HitFace set value "Top"