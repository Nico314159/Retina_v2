execute if score $output_vec3.Y __variable__ matches 0 run return 0
scoreboard players operation $distance __variable__ = $Y0 __variable__
scoreboard players operation $distance __variable__ /= $output_vec3.Y __variable__
execute if score $distance __variable__ < $min_distance_to_surface __variable__ run function retina:__private__/if_else/7