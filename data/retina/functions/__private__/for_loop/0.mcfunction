scoreboard players set $j retina.__variable__ 0
execute if score $j retina.__variable__ < $vertical_count retina.__variable__ run function retina:__private__/for_loop/1
scoreboard players add $i retina.__variable__ 1
execute if score $i retina.__variable__ < $horizontal_count retina.__variable__ run function retina:__private__/for_loop/0