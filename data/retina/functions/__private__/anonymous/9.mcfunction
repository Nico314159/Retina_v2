tag @s add retina.endpoint
data modify entity @s Pos set from storage retina:output ContactCoordinates
execute if score $end_particle retina.__variable__ matches 1.. at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0 1 force @a