function retina:math/sway_heave_surge/find
function retina:math/sway_heave_surge/apply
function retina:traverse/setup
scoreboard players add $j retina.__variable__ 10
execute if score $j retina.__variable__ < $vertical_count retina.__variable__ run function retina:__private__/for_loop/1