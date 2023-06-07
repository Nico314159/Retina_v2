scoreboard players operation $X_intersection __variable__ = $X0 __variable__
scoreboard players operation $Y_intersection __variable__ = $distance __variable__
scoreboard players operation $Y_intersection __variable__ *= $output.vec3_Y __variable__
scoreboard players operation $Y_intersection __variable__ /= 1000 __int__
scoreboard players operation $Z_intersection __variable__ = $distance __variable__
scoreboard players operation $Z_intersection __variable__ *= $output.vec3_Z __variable__
scoreboard players operation $Z_intersection __variable__ /= 1000 __int__
execute if score $Y_intersection __variable__ >= $Y0 __variable__ if score $Y_intersection __variable__ <= $Y1 __variable__ if score $Z_intersection __variable__ >= $Z0 __variable__ if score $Z_intersection __variable__ <= $Z1 __variable__ run function retina:find_closest_surface/ray_intersects_with_surface