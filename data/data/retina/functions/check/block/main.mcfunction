scoreboard players set $boolean __var__ 0
execute if score $boolean __var__ matches ..0 unless block ~ ~ ~ #retina:passable run scoreboard players set $boolean __var__ 1
execute if block ~ ~ ~ #retina:fluid run scoreboard players set $fluid __var__ 1
execute if block ~ ~ ~ #retina:fire run scoreboard players set $fire __var__ 1
execute if score $boolean __var__ matches 1.. run scoreboard players set $collision_boolean __var__ 1