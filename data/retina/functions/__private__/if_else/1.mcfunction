scoreboard players set __math__.rng.bound retina.__variable__ 5
function retina:__private__/math_random/main
scoreboard players operation $input_vec3.X retina.__variable__ = __math__.rng.result retina.__variable__
scoreboard players add $input_vec3.X retina.__variable__ 2
scoreboard players operation $input_vec3.X retina.__variable__ %= 3 retina.__int__
scoreboard players remove $input_vec3.X retina.__variable__ 1
scoreboard players operation $input_vec3.X retina.__variable__ *= 20 retina.__int__