function retina:find_closest_surface/store_coords
execute if score $relative_Y __variable__ = $y0 __variable__ if score $relative_X __variable__ >= $x0 __variable__ if score $relative_X __variable__ <= $x1 __variable__ if score $relative_Z __variable__ >= $z0 __variable__ if score $relative_Z __variable__ <= $z1 __variable__ run function retina:find_closest_surface/ray_already_in_surface
execute if score $relative_Y __variable__ > $y0 __variable__ run function retina:__private__/if_else/8
data remove storage retina:data List[-1]
scoreboard players remove $surfaces __variable__ 1
scoreboard players remove $cuboid_id __variable__ 1
execute if score $surfaces __variable__ matches 1.. run function retina:__private__/while_loop/3