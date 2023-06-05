scoreboard players add $step __variable__ 1
scoreboard players set $end __variable__ 0
function retina:check/block/main
execute if score $end __variable__ matches 1.. run function retina:check/debug
execute if score $step __variable__ >= $max_depth __variable__ run scoreboard players set $end __variable__ 1
execute if score $step __variable__ >= $max_depth __variable__ run tellraw @a ["",{"text":"Failed to find anything within ","italic":true,"color":"light_purple"},{"score":{"name":"$step","objective":"__variable__"},"color":"light_purple"},{"text":" blocks. End coordinates: ","color":"light_purple"},{"text":"[","bold":true,"color":"light_purple"},{"score":{"name":"$int_X","objective":"__variable__"},"color":"light_purple"},{"text":", ","color":"light_purple"},{"score":{"name":"$int_Y","objective":"__variable__"},"color":"light_purple"},{"text":", ","color":"light_purple"},{"score":{"name":"$int_Z","objective":"__variable__"},"color":"light_purple"},{"text":"]","color":"light_purple"}]
execute if score $end __variable__ matches 0 run function retina:traverse/loop