function retina:find_closest_surface/store_coords
execute if score $debug_messages retina.__variable__ matches 1.. run tellraw @a ["",{"text":"[TOP] ","italic":true,"bold":true},{"text":"Relative Y: ","bold":false},{"italic":false,"color":"light_purple","score":{"name":"$relative_Y","objective":"retina.__variable__"}},{"text":", ","italic":false,"color":"light_purple"},{"text":"Y0: ","color":"white"},{"color":"light_purple","score":{"name":"$Y0","objective":"retina.__variable__"}}]
execute if score $relative_Y retina.__variable__ >= $Y0 retina.__variable__ run function retina:__private__/if_else/3
data remove storage retina:data List[-1]
scoreboard players remove $surfaces retina.__variable__ 1
scoreboard players remove $cuboid_id retina.__variable__ 1
execute if score $surfaces retina.__variable__ matches 1.. run function retina:__private__/while_loop/3