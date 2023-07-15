scoreboard players operation $input_vec3.X retina.__variable__ = $horizontal_count retina.__variable__
scoreboard players operation $input_vec3.X retina.__variable__ /= -2 retina.__int__
scoreboard players operation $input_vec3.X retina.__variable__ += $i retina.__variable__
scoreboard players operation $input_vec3.Y retina.__variable__ = $vertical_count retina.__variable__
scoreboard players operation $input_vec3.Y retina.__variable__ /= -2 retina.__int__
scoreboard players operation $input_vec3.Y retina.__variable__ += $j retina.__variable__
scoreboard players set $input_vec3.Z retina.__variable__ 20
scoreboard players operation $input_vec3.X retina.__variable__ *= 480 retina.__int__
scoreboard players operation $temp retina.__variable__ = $input_vec3.X retina.__variable__
scoreboard players operation $temp retina.__variable__ *= $input_vec3.X retina.__variable__
scoreboard players operation $length retina.__variable__ += $temp retina.__variable__
scoreboard players operation $input_vec3.Y retina.__variable__ *= 480 retina.__int__
scoreboard players operation $temp retina.__variable__ = $input_vec3.Y retina.__variable__
scoreboard players operation $temp retina.__variable__ *= $input_vec3.Y retina.__variable__
scoreboard players operation $length retina.__variable__ += $temp retina.__variable__
scoreboard players operation $input_vec3.Z retina.__variable__ *= 480 retina.__int__
scoreboard players operation $temp retina.__variable__ = $input_vec3.Z retina.__variable__
scoreboard players operation $temp retina.__variable__ *= $input_vec3.Z retina.__variable__
scoreboard players operation $length retina.__variable__ += $temp retina.__variable__
scoreboard players operation __math__.N retina.__variable__ = $length retina.__variable__
function retina:__private__/math_sqrt/main
scoreboard players operation $length retina.__variable__ = __math__.x_n retina.__variable__
function retina:math/gimbal_to_matrix
function retina:math/matrix_transform
scoreboard players operation $output_vec3.X retina.__variable__ /= $length retina.__variable__
scoreboard players operation $output_vec3.X retina.__variable__ /= 480 retina.__int__
execute if score $debug_messages retina.__variable__ matches 1.. run tellraw @a ["",{"text":"Angled Vector: "},{"text":"[","color":"gold","italic":true},{"score":{"name":"$output_vec3.X","objective":"retina.__variable__"},"color":"gold"},{"text":", ","color":"gold"},{"score":{"name":"$output_vec3.Y","objective":"retina.__variable__"},"color":"gold"},{"text":", ","color":"gold"},{"score":{"name":"$output_vec3.Z","objective":"retina.__variable__"},"color":"gold"},{"text":"]","color":"gold"}]
scoreboard players operation $output_vec3.Y retina.__variable__ /= $length retina.__variable__
scoreboard players operation $output_vec3.Y retina.__variable__ /= 480 retina.__int__
execute if score $debug_messages retina.__variable__ matches 1.. run tellraw @a ["",{"text":"Angled Vector: "},{"text":"[","color":"gold","italic":true},{"score":{"name":"$output_vec3.X","objective":"retina.__variable__"},"color":"gold"},{"text":", ","color":"gold"},{"score":{"name":"$output_vec3.Y","objective":"retina.__variable__"},"color":"gold"},{"text":", ","color":"gold"},{"score":{"name":"$output_vec3.Z","objective":"retina.__variable__"},"color":"gold"},{"text":"]","color":"gold"}]
scoreboard players operation $output_vec3.Z retina.__variable__ /= $length retina.__variable__
scoreboard players operation $output_vec3.Z retina.__variable__ /= 480 retina.__int__
execute if score $debug_messages retina.__variable__ matches 1.. run tellraw @a ["",{"text":"Angled Vector: "},{"text":"[","color":"gold","italic":true},{"score":{"name":"$output_vec3.X","objective":"retina.__variable__"},"color":"gold"},{"text":", ","color":"gold"},{"score":{"name":"$output_vec3.Y","objective":"retina.__variable__"},"color":"gold"},{"text":", ","color":"gold"},{"score":{"name":"$output_vec3.Z","objective":"retina.__variable__"},"color":"gold"},{"text":"]","color":"gold"}]
function retina:traverse/setup
scoreboard players add $j retina.__variable__ 1
execute if score $j retina.__variable__ < $vertical_count retina.__variable__ run function retina:__private__/for_loop/1