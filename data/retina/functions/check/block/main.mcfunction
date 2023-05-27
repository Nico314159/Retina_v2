scoreboard players set $boolean __variable__ 0
execute if score $boolean __variable__ matches ..0 unless block ~ ~ ~ #retina:passable run scoreboard players set $boolean __variable__ 1
execute if block ~ ~ ~ #retina:fluid run scoreboard players set $fluid __variable__ 1
execute if block ~ ~ ~ #retina:fire run scoreboard players set $fire __variable__ 1
execute if score $boolean __variable__ matches 1.. run scoreboard players set $collision_boolean __variable__ 1