scoreboard players set $boolean __variable__ 0
execute if score $boolean __variable__ matches ..0 unless block ~ ~ ~ #retina:passable run scoreboard players set $boolean __variable__ 1
execute if block ~ ~ ~ #retina:fluid run scoreboard players set $is_fluid __variable__ 1
execute if block ~ ~ ~ #retina:fire run scoreboard players set $is_fire __variable__ 1
execute if score $boolean __variable__ matches 1.. run function retina:__private__/if_else/3
execute unless score $boolean __variable__ matches 1.. run tellraw @a ["",{"text":"No block... Coordinates: ","italic":true,"color":"white"},{"text":"[","color":"blue"},{"score":{"name":"$x","objective":"__variable__"},"color":"blue"},{"text":", ","color":"blue"},{"score":{"name":"$y","objective":"__variable__"},"color":"blue"},{"text":", ","color":"blue"},{"score":{"name":"$z","objective":"__variable__"},"color":"blue"},{"text":"]","color":"blue"}]
scoreboard players operation $collision __variable__ = $boolean __variable__