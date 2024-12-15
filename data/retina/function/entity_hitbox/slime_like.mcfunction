execute store result score $slime_size retina.__variable__ run data get entity @s Size
scoreboard players add $slime_size retina.__variable__ 1
execute store result storage retina:data entity_half_width float 0.255 run scoreboard players get $slime_size retina.__variable__
execute store result storage retina:data entity_height float 0.510 run scoreboard players get $slime_size retina.__variable__