scoreboard players operation $distance __variable__ = $z0 __variable__
scoreboard players operation $distance __variable__ -= $relative_Z __variable__
scoreboard players operation $distance __variable__ *= 1000 __int__
scoreboard players operation $distance __variable__ /= $delta_Z __variable__
tellraw @a ["",{"text":"Distance: ","italic":true},{"color":"light_purple","score":{"name":"$distance","objective":"__variable__"}}]
execute if score $distance __variable__ < $min_distance_to_surface __variable__ run function retina:__private__/if_else/11