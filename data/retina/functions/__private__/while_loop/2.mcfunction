execute store result score $x0 __variable__ run data get storage retina:data List[-1][0]
execute store result score $y0 __variable__ run data get storage retina:data List[-1][1]
execute store result score $z0 __variable__ run data get storage retina:data List[-1][2]
execute store result score $x1 __variable__ run data get storage retina:data List[-1][3]
execute store result score $z1 __variable__ run data get storage retina:data List[-1][5]
execute if score $frac_Y __variable__ = $y0 __variable__ if score $frac_X __variable__ >= $x0 __variable__ if score $frac_X __variable__ <= $x1 __variable__ if score $frac_Z __variable__ >= $z0 __variable__ if score $frac_Z __variable__ <= $z1 __variable__ run function retina:find_closest_surface/ray_already_in_surface
execute if score $frac_Y __variable__ < $y0 __variable__ run function retina:__private__/if_else/6
data remove storage retina:data List[-1]
scoreboard players remove $surfaces __variable__ 1
scoreboard players remove $cuboid_id __variable__ 1
execute if score $surfaces __variable__ matches 1.. run function retina:__private__/while_loop/2