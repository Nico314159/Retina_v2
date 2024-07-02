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
execute if score $debug_messages retina.__variable__ matches 1.. run tellraw @a ["",{"text":"Angled Vector: "},{"text":"[","color":"gold","italic":true,"type":"text"},{"score":{"name":"$output_vec3.X","objective":"retina.__variable__"},"italic":true,"color":"gold","type":"score"},{"text":", ","italic":true,"color":"gold"},{"score":{"name":"$output_vec3.Y","objective":"retina.__variable__"},"italic":true,"color":"gold","type":"score"},{"text":", ","italic":true,"color":"gold"},{"score":{"name":"$output_vec3.Z","objective":"retina.__variable__"},"italic":true,"color":"gold","type":"score"},{"text":"]","italic":true,"color":"gold"}]