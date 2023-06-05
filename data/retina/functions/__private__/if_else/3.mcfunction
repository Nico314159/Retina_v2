scoreboard players operation $X_intersection __variable__ = $x0 __variable__
scoreboard players operation $Y_intersection __variable__ = $distance __variable__
scoreboard players operation $Y_intersection __variable__ *= $delta_Y __variable__
scoreboard players operation $Y_intersection __variable__ /= 1000 __int__
scoreboard players operation $Y_intersection __variable__ += $frac_Y __variable__
scoreboard players operation $Z_intersection __variable__ = $distance __variable__
scoreboard players operation $Z_intersection __variable__ *= $delta_Z __variable__
scoreboard players operation $Z_intersection __variable__ /= 1000 __int__
scoreboard players operation $Z_intersection __variable__ += $frac_Z __variable__
execute if score $Y_intersection __variable__ >= $y0 __variable__ if score $Y_intersection __variable__ <= $y1 __variable__ if score $Z_intersection __variable__ >= $z0 __variable__ if score $Z_intersection __variable__ <= $z1 __variable__ run function retina:find_closest_surface/ray_intersects_with_surface