function retina:find_closest_surface/store_coords
execute if score $debug_messages __variable__ matches 1.. run tellraw @a ["",{"text":"[SOUTH] ","italic":true,"bold":true},{"text":"Relative Z: ","bold":false},{"italic":false,"color":"light_purple","score":{"name":"$relative_Z","objective":"__variable__"}},{"text":", ","italic":false,"color":"light_purple"},{"text":"Z0: ","color":"white"},{"color":"light_purple","score":{"name":"$Z0","objective":"__variable__"}}]
execute if score $relative_Z __variable__ >= $Z0 __variable__ run function retina:__private__/if_else/12
data remove storage retina:data List[-1]
scoreboard players remove $surfaces __variable__ 1
scoreboard players remove $cuboid_id __variable__ 1
execute if score $surfaces __variable__ matches 1.. run function retina:__private__/while_loop/5