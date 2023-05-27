scoreboard players set $collision __var__ 0
scoreboard players set $fluid __var__ 0
scoreboard players set $fire __var__ 0
function retina:check/block/main
execute unless score $collision_boolean __var__ matches 1.. if score $fluid __var__ matches 1.. run scoreboard players set $motion_fluid_boolean __var__ 1
execute unless score $collision_boolean __var__ matches 1.. if score $fire __var__ matches 1.. run scoreboard players set $motion_fire_boolean __var__ 1
execute if score $collision_boolean __var__ matches 1.. run function retina:check/collision/main
execute unless score $collision_boolean __var__ matches 1.. run function retina:traverse/main