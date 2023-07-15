function retina:traverse/setup
scoreboard players add $i retina.__variable__ 1
execute if score $i retina.__variable__ < $centered_count retina.__variable__ run function retina:__private__/for_loop/2