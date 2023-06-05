scoreboard players operation $X_intersection __variable__ = $distance __variable__
scoreboard players operation $X_intersection __variable__ *= $dx __variable__
scoreboard players operation $X_intersection __variable__ /= 1000 __int__
scoreboard players operation $X_intersection __variable__ += $frac_X __variable__
scoreboard players operation $Y_intersection __variable__ = $distance __variable__
scoreboard players operation $Y_intersection __variable__ *= $dy __variable__
scoreboard players operation $Y_intersection __variable__ /= 1000 __int__
scoreboard players operation $Y_intersection __variable__ += $frac_Y __variable__
scoreboard players operation $Z_intersection __variable__ = $z0 __variable__
execute if score $X_intersection __variable__ >= $x0 __variable__ if score $X_intersection __variable__ <= $x1 __variable__ if score $Y_intersection __variable__ >= $y0 __variable__ if score $Y_intersection __variable__ <= $y1 __variable__ run function retina:find_closest_surface/ray_intersects_with_surface