data modify storage retina:output Target set value "BLOCK"
data modify storage retina:output TargetedBlock set value [0,0,0]
data modify storage retina:output PlacingPosition set value [0,0,0]
data modify storage retina:output ContactCoordinates set value [0.0d,0.0d,0.0d]
data modify storage retina:output ContactSurface set from storage retina:data ContactSurface
execute store result storage retina:output TargetedBlock[0] int 1 run scoreboard players get $int_X retina.__variable__
execute store result storage retina:output PlacingPosition[0] int 1 run scoreboard players get $prev_X retina.__variable__
scoreboard players operation $targeted_X retina.__variable__ += $origin_X retina.__variable__
execute store result storage retina:output ContactCoordinates[0] double 0.0020833333333333333 run scoreboard players get $targeted_X retina.__variable__
execute if score $nearest_axis retina.__variable__ matches 0 run function retina:__private__/if_else/15
execute store result storage retina:output TargetedBlock[1] int 1 run scoreboard players get $int_Y retina.__variable__
execute store result storage retina:output PlacingPosition[1] int 1 run scoreboard players get $prev_Y retina.__variable__
scoreboard players operation $targeted_Y retina.__variable__ += $origin_Y retina.__variable__
execute store result storage retina:output ContactCoordinates[1] double 0.0020833333333333333 run scoreboard players get $targeted_Y retina.__variable__
execute if score $nearest_axis retina.__variable__ matches 1 run function retina:__private__/if_else/16
execute store result storage retina:output TargetedBlock[2] int 1 run scoreboard players get $int_Z retina.__variable__
execute store result storage retina:output PlacingPosition[2] int 1 run scoreboard players get $prev_Z retina.__variable__
scoreboard players operation $targeted_Z retina.__variable__ += $origin_Z retina.__variable__
execute store result storage retina:output ContactCoordinates[2] double 0.0020833333333333333 run scoreboard players get $targeted_Z retina.__variable__
execute if score $nearest_axis retina.__variable__ matches 2 run function retina:__private__/if_else/17
scoreboard players operation $total_distance retina.__variable__ /= 480 retina.__int__
execute if score $total_distance retina.__variable__ matches ..-1 run scoreboard players operation $total_distance retina.__variable__ *= -1 retina.__int__
execute store result storage retina:output Distance double 0.0020833333333333333 run scoreboard players get $total_distance retina.__variable__
execute if data storage retina:input {EndpointEntity: true} summon minecraft:marker run function retina:__private__/anonymous/9