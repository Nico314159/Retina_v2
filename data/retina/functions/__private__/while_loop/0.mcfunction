function retina:find_closest_surface/store_coords
execute if score $debug_messages retina.__variable__ matches 1.. run tellraw @a ["",{"text":"[WEST] ","italic":true,"bold":true},{"text":"Relative X: ","bold":false},{"italic":false,"color":"light_purple","score":{"name":"$relative_X","objective":"retina.__variable__"}},{"text":", ","italic":false,"color":"light_purple"},{"text":"X0: ","color":"white"},{"color":"light_purple","score":{"name":"$X0","objective":"retina.__variable__"}}]
execute if score $relative_X retina.__variable__ <= $X0 retina.__variable__ run function retina:__private__/if_else/1
data remove storage retina:data List[-1]
scoreboard players remove $surfaces retina.__variable__ 1
scoreboard players remove $cuboid_id retina.__variable__ 1
execute if score $surfaces retina.__variable__ matches 1.. run function retina:__private__/while_loop/0