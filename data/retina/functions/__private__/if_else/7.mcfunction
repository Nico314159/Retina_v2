scoreboard players operation $X_intersection __variable__ = $distance __variable__
scoreboard players operation $X_intersection __variable__ *= $delta_X __variable__
scoreboard players operation $X_intersection __variable__ /= 1000 __int__
scoreboard players operation $X_intersection __variable__ += $relative_X __variable__
scoreboard players operation $Y_intersection __variable__ = $y0 __variable__
scoreboard players operation $Z_intersection __variable__ = $distance __variable__
scoreboard players operation $Z_intersection __variable__ *= $delta_Z __variable__
scoreboard players operation $Z_intersection __variable__ /= 1000 __int__
scoreboard players operation $Z_intersection __variable__ += $relative_Z __variable__
execute if score $X_intersection __variable__ >= $x0 __variable__ if score $X_intersection __variable__ <= $x1 __variable__ if score $Z_intersection __variable__ >= $z0 __variable__ if score $Z_intersection __variable__ <= $z1 __variable__ run function retina:find_closest_surface/ray_intersects_with_surface