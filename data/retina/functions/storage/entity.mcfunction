data modify storage retina:output Target set value "ENTITY"
data modify storage retina:output TargetedEntity set value {UUID:[I;0,0,0,0],Pos:[0.0f,0.0f,0.0f]}
execute as @e[type=!#retina:ignore,tag=retina.possible_target] if score @s retina.id = $closest_cuboid_id retina.__variable__ run tag @s add retina.target
data modify storage retina:data Entity set from entity @e[type=!#retina:ignore,tag=retina.target,limit=1]
data modify storage retina:output TargetedEntity.UUID set from storage retina:data Entity.UUID
data modify storage retina:output TargetedEntity.Pos set from storage retina:data Entity.Pos
data remove storage retina:data Entity
data modify storage retina:output ContactSurface set from storage retina:data ContactSurface
data modify storage retina:output ContactCoordinates set value [0.0d,0.0d,0.0d]
execute store result storage retina:output ContactCoordinates[0] double 0.00208333 run scoreboard players get $X_intersection retina.__variable__
execute store result storage retina:output ContactCoordinates[1] double 0.00208333 run scoreboard players get $Y_intersection retina.__variable__
execute store result storage retina:output ContactCoordinates[2] double 0.00208333 run scoreboard players get $Z_intersection retina.__variable__
scoreboard players operation $total_distance retina.__variable__ = $entity_distance retina.__variable__
scoreboard players operation $total_distance retina.__variable__ += $shortest_distance retina.__variable__
execute store result storage retina:output Distance double 0.00208333 run scoreboard players get $total_distance retina.__variable__