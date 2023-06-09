execute if score $output_vec3.Z __variable__ matches 0 run return 0
scoreboard players operation $distance __variable__ = $Z0 __variable__
scoreboard players operation $distance __variable__ /= $output_vec3.Z __variable__
execute if score $debug_messages __variable__ matches 1.. run tellraw @a ["",{"text":"Distance: ","italic":true},{"color":"light_purple","score":{"name":"$distance","objective":"__variable__"}}]
execute if score $distance __variable__ < $min_distance_to_surface __variable__ run function retina:__private__/if_else/11