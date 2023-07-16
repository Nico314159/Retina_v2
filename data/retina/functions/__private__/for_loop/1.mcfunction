scoreboard players operation $input_vec3.X retina.__variable__ = $i retina.__variable__
scoreboard players operation $input_vec3.X retina.__variable__ *= 2 retina.__int__
scoreboard players add $input_vec3.X retina.__variable__ 10
scoreboard players operation $input_vec3.X retina.__variable__ -= $horizontal_count retina.__variable__
scoreboard players operation $input_vec3.Y retina.__variable__ = $j retina.__variable__
scoreboard players operation $input_vec3.Y retina.__variable__ *= 2 retina.__int__
scoreboard players add $input_vec3.Y retina.__variable__ 10
scoreboard players operation $input_vec3.Y retina.__variable__ -= $vertical_count retina.__variable__
scoreboard players set $input_vec3.Z retina.__variable__ 500
execute if score $debug_messages retina.__variable__ matches 1.. run tellraw @a ["",{"text":"Input Vector: "},{"text":"[","color":"red","italic":true},{"score":{"name":"$input_vec3.X","objective":"retina.__variable__"},"italic":true,"color":"red"},{"text":", ","italic":true,"color":"red"},{"score":{"name":"$input_vec3.Y","objective":"retina.__variable__"},"italic":true,"color":"red"},{"text":", ","italic":true,"color":"red"},{"score":{"name":"$input_vec3.Z","objective":"retina.__variable__"},"italic":true,"color":"red"},{"text":"]","italic":true,"color":"red"}]
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
execute store result score $input_pitch retina.__variable__ run data get entity @s Rotation[1] 10
execute store result score $input_yaw retina.__variable__ run data get entity @s Rotation[0] 10
function retina:math/gimbal_to_matrix
scoreboard players operation $input_mat3.XX retina.__variable__ = $output_mat3.XX retina.__variable__
scoreboard players operation $input_mat3.XY retina.__variable__ = $output_mat3.XY retina.__variable__
scoreboard players operation $input_mat3.XZ retina.__variable__ = $output_mat3.XZ retina.__variable__
scoreboard players operation $input_mat3.YX retina.__variable__ = $output_mat3.YX retina.__variable__
scoreboard players operation $input_mat3.YY retina.__variable__ = $output_mat3.YY retina.__variable__
scoreboard players operation $input_mat3.YZ retina.__variable__ = $output_mat3.YZ retina.__variable__
scoreboard players operation $input_mat3.ZX retina.__variable__ = $output_mat3.ZX retina.__variable__
scoreboard players operation $input_mat3.ZY retina.__variable__ = $output_mat3.ZY retina.__variable__
scoreboard players operation $input_mat3.ZZ retina.__variable__ = $output_mat3.ZZ retina.__variable__
function retina:math/matrix_transform
scoreboard players operation $output_vec3.X retina.__variable__ *= 480 retina.__int__
scoreboard players operation $output_vec3.X retina.__variable__ /= $length retina.__variable__
scoreboard players operation $output_vec3.Y retina.__variable__ *= 480 retina.__int__
scoreboard players operation $output_vec3.Y retina.__variable__ /= $length retina.__variable__
scoreboard players operation $output_vec3.Z retina.__variable__ *= 480 retina.__int__
scoreboard players operation $output_vec3.Z retina.__variable__ /= $length retina.__variable__
execute if score $debug_messages retina.__variable__ matches 1.. run tellraw @a ["",{"text":"Angled Vector: "},{"text":"[","color":"gold","italic":true},{"score":{"name":"$output_vec3.X","objective":"retina.__variable__"},"italic":true,"color":"gold"},{"text":", ","italic":true,"color":"gold"},{"score":{"name":"$output_vec3.Y","objective":"retina.__variable__"},"italic":true,"color":"gold"},{"text":", ","italic":true,"color":"gold"},{"score":{"name":"$output_vec3.Z","objective":"retina.__variable__"},"italic":true,"color":"gold"},{"text":"]","italic":true,"color":"gold"}]
function retina:traverse/setup
scoreboard players add $j retina.__variable__ 10
execute if score $j retina.__variable__ < $vertical_count retina.__variable__ run function retina:__private__/for_loop/1