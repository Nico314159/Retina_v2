function retina:find_closest_surface/store_coords
execute if score $relative_Y __variable__ >= $Y0 __variable__ run function retina:__private__/if_else/8
data remove storage retina:data List[-1]
scoreboard players remove $surfaces __variable__ 1
scoreboard players remove $cuboid_id __variable__ 1
execute if score $surfaces __variable__ matches 1.. run function retina:__private__/while_loop/3