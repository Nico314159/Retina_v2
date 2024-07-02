execute store result score $input_vec3.X retina.__variable__ run random value 2..6
scoreboard players operation $input_vec3.X retina.__variable__ %= 3 retina.__int__
scoreboard players remove $input_vec3.X retina.__variable__ 1
scoreboard players operation $input_vec3.X retina.__variable__ *= 20 retina.__int__