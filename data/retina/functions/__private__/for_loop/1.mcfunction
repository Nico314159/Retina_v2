scoreboard players operation $input_vec3.X retina.__variable__ = $i retina.__variable__
scoreboard players operation $input_vec3.X retina.__variable__ *= 2 retina.__int__
scoreboard players operation $input_vec3.X retina.__variable__ -= $horizontal_count retina.__variable__
scoreboard players add $input_vec3.X retina.__variable__ 10
scoreboard players operation $input_vec3.Y retina.__variable__ = $i retina.__variable__
scoreboard players operation $input_vec3.Y retina.__variable__ *= 2 retina.__int__
scoreboard players operation $input_vec3.Y retina.__variable__ -= $vertical_count retina.__variable__
scoreboard players add $input_vec3.Y retina.__variable__ 10
scoreboard players set $input_vec3.Z retina.__variable__ 100
tellraw @a ["",{"text":"Input Vector: "},{"text":"[","color":"red","italic":true},{"score":{"name":"$input_vec3.X","objective":"retina.__variable__"},"italic":true,"color":"red"},{"text":", ","italic":true,"color":"red"},{"score":{"name":"$input_vec3.Y","objective":"retina.__variable__"},"italic":true,"color":"red"},{"text":", ","italic":true,"color":"red"},{"score":{"name":"$input_vec3.Z","objective":"retina.__variable__"},"italic":true,"color":"red"},{"text":"]","italic":true,"color":"red"}]
scoreboard players set $length retina.__variable__ 0
scoreboard players operation $temp retina.__variable__ = $input_vec3.X retina.__variable__
scoreboard players operation $temp retina.__variable__ *= $input_vec3.X retina.__variable__
scoreboard players operation $length retina.__variable__ += $temp retina.__variable__
scoreboard players operation $temp retina.__variable__ = $input_vec3.Y retina.__variable__
scoreboard players operation $temp retina.__variable__ *= $input_vec3.Y retina.__variable__
scoreboard players operation $length retina.__variable__ += $temp retina.__variable__
scoreboard players operation $temp retina.__variable__ = $input_vec3.Z retina.__variable__
scoreboard players operation $temp retina.__variable__ *= $input_vec3.Z retina.__variable__
scoreboard players operation $length retina.__variable__ += $temp retina.__variable__
scoreboard players operation __math__.N retina.__variable__ = $length retina.__variable__
function retina:__private__/math_sqrt/main
scoreboard players operation $length retina.__variable__ = __math__.x_n retina.__variable__
function retina:math/gimbal_to_matrix
function retina:math/matrix_transform
scoreboard players operation $output_vec3.X retina.__variable__ *= 480 retina.__int__
scoreboard players operation $output_vec3.X retina.__variable__ /= $length retina.__variable__
tellraw @a ["",{"text":"Angled Vector: "},{"text":"[","color":"gold","italic":true},{"score":{"name":"$output_vec3.X","objective":"retina.__variable__"},"italic":true,"color":"gold"},{"text":", ","italic":true,"color":"gold"},{"score":{"name":"$output_vec3.Y","objective":"retina.__variable__"},"italic":true,"color":"gold"},{"text":", ","italic":true,"color":"gold"},{"score":{"name":"$output_vec3.Z","objective":"retina.__variable__"},"italic":true,"color":"gold"},{"text":"]","italic":true,"color":"gold"}]
scoreboard players operation $output_vec3.Y retina.__variable__ *= 480 retina.__int__
scoreboard players operation $output_vec3.Y retina.__variable__ /= $length retina.__variable__
tellraw @a ["",{"text":"Angled Vector: "},{"text":"[","color":"gold","italic":true},{"score":{"name":"$output_vec3.X","objective":"retina.__variable__"},"italic":true,"color":"gold"},{"text":", ","italic":true,"color":"gold"},{"score":{"name":"$output_vec3.Y","objective":"retina.__variable__"},"italic":true,"color":"gold"},{"text":", ","italic":true,"color":"gold"},{"score":{"name":"$output_vec3.Z","objective":"retina.__variable__"},"italic":true,"color":"gold"},{"text":"]","italic":true,"color":"gold"}]
scoreboard players operation $output_vec3.Z retina.__variable__ *= 480 retina.__int__
scoreboard players operation $output_vec3.Z retina.__variable__ /= $length retina.__variable__
tellraw @a ["",{"text":"Angled Vector: "},{"text":"[","color":"gold","italic":true},{"score":{"name":"$output_vec3.X","objective":"retina.__variable__"},"italic":true,"color":"gold"},{"text":", ","italic":true,"color":"gold"},{"score":{"name":"$output_vec3.Y","objective":"retina.__variable__"},"italic":true,"color":"gold"},{"text":", ","italic":true,"color":"gold"},{"score":{"name":"$output_vec3.Z","objective":"retina.__variable__"},"italic":true,"color":"gold"},{"text":"]","italic":true,"color":"gold"}]
function retina:traverse/setup
scoreboard players add $j retina.__variable__ 10
execute if score $j retina.__variable__ < $vertical_count retina.__variable__ run function retina:__private__/for_loop/1