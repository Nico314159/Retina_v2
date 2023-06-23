function retina:find_closest_surface/store_coords
execute if score $relative_Y retina.__variable__ >= $Y0 retina.__variable__ run function retina:__private__/if_else/2
data remove storage retina:data List[-1]
scoreboard players remove $surfaces retina.__variable__ 1
scoreboard players remove $cuboid_id retina.__variable__ 1
execute if score $surfaces retina.__variable__ matches 1.. run function retina:__private__/while_loop/2