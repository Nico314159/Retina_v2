scoreboard players operation $input_vec3.X retina.__variable__ = $i retina.__variable__
scoreboard players operation $input_vec3.X retina.__variable__ *= 2 retina.__int__
scoreboard players add $input_vec3.X retina.__variable__ 10
scoreboard players operation $input_vec3.X retina.__variable__ -= $horizontal_count retina.__variable__
execute if score $horizontal_count retina.__variable__ matches 10 run function retina:__private__/if_else/0
scoreboard players operation __math__.rng.bound retina.__variable__ = $spread_most retina.__variable__
scoreboard players operation __math__.rng.bound retina.__variable__ -= $spread_least retina.__variable__
scoreboard players add __math__.rng.bound retina.__variable__ 1
function retina:__private__/math_random/main
scoreboard players operation $spread retina.__variable__ = __math__.rng.result retina.__variable__
scoreboard players operation $spread retina.__variable__ += $spread_least retina.__variable__
scoreboard players operation $input_vec3.X retina.__variable__ *= $spread retina.__variable__
scoreboard players operation $input_vec3.X retina.__variable__ /= 100 retina.__int__
scoreboard players operation $input_vec3.Y retina.__variable__ = $j retina.__variable__
scoreboard players operation $input_vec3.Y retina.__variable__ *= 2 retina.__int__
scoreboard players add $input_vec3.Y retina.__variable__ 10
scoreboard players operation $input_vec3.Y retina.__variable__ -= $vertical_count retina.__variable__
execute if score $vertical_count retina.__variable__ matches 10 run function retina:__private__/if_else/1
scoreboard players operation __math__.rng.bound retina.__variable__ = $spread_most retina.__variable__
scoreboard players operation __math__.rng.bound retina.__variable__ -= $spread_least retina.__variable__
scoreboard players add __math__.rng.bound retina.__variable__ 1
function retina:__private__/math_random/main
scoreboard players operation $spread retina.__variable__ = __math__.rng.result retina.__variable__
scoreboard players operation $spread retina.__variable__ += $spread_least retina.__variable__
scoreboard players operation $input_vec3.Y retina.__variable__ *= $spread retina.__variable__
scoreboard players operation $input_vec3.Y retina.__variable__ /= 100 retina.__int__
scoreboard players set $input_vec3.Z retina.__variable__ 500
execute if score $debug_messages retina.__variable__ matches 1.. run tellraw @a ["",{"text":"Input Vector: "},{"text":"[","color":"red","italic":true,"type":"text"},{"score":{"name":"$input_vec3.X","objective":"retina.__variable__"},"italic":true,"color":"red","type":"score"},{"text":", ","italic":true,"color":"red"},{"score":{"name":"$input_vec3.Y","objective":"retina.__variable__"},"italic":true,"color":"red","type":"score"},{"text":", ","italic":true,"color":"red"},{"score":{"name":"$input_vec3.Z","objective":"retina.__variable__"},"italic":true,"color":"red","type":"score"},{"text":"]","italic":true,"color":"red"}]