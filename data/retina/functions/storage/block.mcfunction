data modify storage retina:output Target set value "BLOCK"
data modify storage retina:output TargetedBlock set value [0,0,0]
execute store result storage retina:output TargetedBlock[0] int 1 run scoreboard players get $int_X retina.__variable__
execute store result storage retina:output TargetedBlock[1] int 1 run scoreboard players get $int_Y retina.__variable__
execute store result storage retina:output TargetedBlock[2] int 1 run scoreboard players get $int_Z retina.__variable__
data modify storage retina:output PlacingPosition set value [0,0,0]
execute store result storage retina:output PlacingPosition[0] int 1 run scoreboard players get $prev_X retina.__variable__
execute store result storage retina:output PlacingPosition[1] int 1 run scoreboard players get $prev_Y retina.__variable__
execute store result storage retina:output PlacingPosition[2] int 1 run scoreboard players get $prev_Z retina.__variable__
data modify storage retina:output ContactSurface set from storage retina:data ContactSurface
data modify storage retina:output ContactCoordinates set value [0.0d,0.0d,0.0d]
execute store result storage retina:output ContactCoordinates[0] double 0.00208333 run scoreboard players get $targeted_X retina.__variable__
execute store result storage retina:output ContactCoordinates[1] double 0.00208333 run scoreboard players get $targeted_Y retina.__variable__
execute store result storage retina:output ContactCoordinates[2] double 0.00208333 run scoreboard players get $targeted_Z retina.__variable__
execute if score $nearest_axis retina.__variable__ matches 0 run function retina:__private__/if_else/20
execute if score $nearest_axis retina.__variable__ matches 1 run function retina:__private__/if_else/21
execute if score $nearest_axis retina.__variable__ matches 2 run function retina:__private__/if_else/22
scoreboard players operation $total_distance retina.__variable__ /= 480 retina.__int__
execute store result storage retina:output Distance double 0.00208333 run scoreboard players get $total_distance retina.__variable__
execute if score $debug_messages retina.__variable__ matches 2 run tellraw @a [{"text":"Distance (NBT): ","bold":true,"italic":true},{"nbt":"Distance","storage":"retina:output","bold":false,"italic":false,"color":"red"}]