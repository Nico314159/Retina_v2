data remove storage retina:data Surfaces
data modify storage retina:data Surfaces set value {Top:[],Bottom:[],West:[],East:[],North:[],South:[]}
scoreboard players set $max retina.id 0
tag @e[type=!#retina:intangible] remove retina.possible_target
scoreboard players set __if_else__ retina.__variable__ 0
execute unless score $expand_entity_hitboxes retina.__variable__ = $expand_entity_hitboxes retina.__variable__ run function retina:__private__/if_else/4
execute if score __if_else__ retina.__variable__ matches 0 align xyz positioned ~-1 ~-1 ~-1 as @e[type=!#retina:intangible,tag=!retina.ignore,tag=!retina.executing,dx=2,dy=2,dz=2] at @s run function retina:check/entity/get_hitbox
scoreboard players set $contact retina.__variable__ 0
execute if data storage retina:data Surfaces run function retina:find_closest_surface/main
execute if score $contact retina.__variable__ matches 1.. run scoreboard players operation $entity_distance retina.__variable__ = $min_distance_to_surface retina.__variable__
scoreboard players operation $hit_entity retina.__variable__ = $contact retina.__variable__
execute if score $hit_block retina.__variable__ matches 1.. if score $hit_entity retina.__variable__ matches 1.. if score $debug_messages retina.__variable__ matches 1.. run tellraw @a ["",{"text":"Distance comparison: entity_distance = ","color":"gold","type":"text"},{"score":{"name":"$entity_distance","objective":"retina.__variable__"},"color":"gold","type":"score"},{"text":", block_distance = ","color":"gold"},{"score":{"name":"$block_distance","objective":"retina.__variable__"},"color":"gold","type":"score"}]
execute if score $hit_block retina.__variable__ matches 1.. if score $hit_entity retina.__variable__ matches 1.. if score $entity_distance retina.__variable__ < $block_distance retina.__variable__ run scoreboard players set $hit_block retina.__variable__ 0
execute if score $hit_block retina.__variable__ matches 1.. if score $hit_entity retina.__variable__ matches 1.. if score $entity_distance retina.__variable__ >= $block_distance retina.__variable__ run scoreboard players set $hit_entity retina.__variable__ 0