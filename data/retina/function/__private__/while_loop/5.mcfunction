function retina:find_closest_surface/store_coords
execute if score $debug_messages retina.__variable__ matches 1.. run tellraw @a ["",{"text":"[SOUTH] ","italic":true,"bold":true,"type":"text"},{"text":"Z0: ","color":"white","type":"text"},{"color":"light_purple","score":{"name":"$Z0","objective":"retina.__variable__"},"type":"score"}]
function retina:__private__/anonymous/10
data remove storage retina:data List[-1]
scoreboard players remove $surfaces retina.__variable__ 1
scoreboard players remove $cuboid_id retina.__variable__ 1
execute if score $surfaces retina.__variable__ matches 1.. run function retina:__private__/while_loop/5