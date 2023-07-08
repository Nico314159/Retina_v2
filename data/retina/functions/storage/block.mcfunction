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
execute store result storage retina:output ContactCoordinates[0] double 0.00208333 run scoreboard players get $X_intersection retina.__variable__
execute store result storage retina:output ContactCoordinates[1] double 0.00208333 run scoreboard players get $Y_intersection retina.__variable__
execute store result storage retina:output ContactCoordinates[2] double 0.00208333 run scoreboard players get $Z_intersection retina.__variable__
scoreboard players operation $total_distance retina.__variable__ = $block_distance retina.__variable__
scoreboard players operation $total_distance retina.__variable__ += $shortest_distance retina.__variable__
tellraw @a ["",{"text":"block_distance = ","bold":true,"italic":true},{"score":{"name":"$block_distance","objective":"retina.__variable__"}},{"text":", shortest_distance = "},{"score":{"name":"$shortest_distance","objective":"retina.__variable__"}},{"text":", total_distance = "},{"score":{"name":"$total_distance","objective":"retina.__variable__"}}]
execute store result storage retina:output Distance double 0.00208333 run scoreboard players get $total_distance retina.__variable__