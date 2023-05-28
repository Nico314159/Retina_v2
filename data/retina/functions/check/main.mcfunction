scoreboard players set $collision __variable__ 0
scoreboard players set $is_fluid __variable__ 0
scoreboard players set $is_fire __variable__ 0
function retina:check/block/main
execute unless score $collision __variable__ matches 1.. if score $fluid __variable__ matches 1.. run scoreboard players set $motion_fluid_boolean __variable__ 1
execute unless score $collision __variable__ matches 1.. if score $fire __variable__ matches 1.. run scoreboard players set $motion_fire_boolean __variable__ 1
execute if score $collision __variable__ matches 1.. run function retina:check/collision/main
execute unless score $collision __variable__ matches 1.. run function retina:traverse/loop