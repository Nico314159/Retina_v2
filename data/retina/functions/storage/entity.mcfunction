data modify storage retina:output Target set value "ENTITY"
data modify storage retina:output TargetedEntity set value {UUID:[I;0,0,0,0],Pos:[0.0f,0.0f,0.0f]}
execute as @e[type=!#retina:ignore,tag=retina.possible_target] if score @s retina.id = $closest_cuboid_id retina.__variable__ run function retina:__private__/anonymous/10
data modify storage retina:data Entity set from entity @e[type=!#retina:ignore,tag=retina.target,limit=1]
data modify storage retina:output TargetedEntity.UUID set from storage retina:data Entity.UUID
data modify storage retina:output TargetedEntity.Pos set from storage retina:data Entity.Pos
data remove storage retina:data Entity
data modify storage retina:output ContactSurface set from storage retina:data ContactSurface
data modify storage retina:output ContactCoordinates set value [0.0d,0.0d,0.0d]
scoreboard players operation $targeted_X retina.__variable__ += $origin_X retina.__variable__
execute store result storage retina:output ContactCoordinates[0] double 0.0020833333333333333 run scoreboard players get $targeted_X retina.__variable__
execute if score $nearest_axis retina.__variable__ matches 0 run function retina:__private__/if_else/20
scoreboard players operation $targeted_Y retina.__variable__ += $origin_Y retina.__variable__
execute store result storage retina:output ContactCoordinates[1] double 0.0020833333333333333 run scoreboard players get $targeted_Y retina.__variable__
execute if score $nearest_axis retina.__variable__ matches 1 run function retina:__private__/if_else/21
scoreboard players operation $targeted_Z retina.__variable__ += $origin_Z retina.__variable__
execute store result storage retina:output ContactCoordinates[2] double 0.0020833333333333333 run scoreboard players get $targeted_Z retina.__variable__
execute if score $nearest_axis retina.__variable__ matches 2 run function retina:__private__/if_else/22
scoreboard players operation $total_distance retina.__variable__ /= 480 retina.__int__
execute if score $total_distance retina.__variable__ matches ..-1 run scoreboard players operation $total_distance retina.__variable__ *= -1 retina.__int__
execute store result storage retina:output Distance double 0.0020833333333333333 run scoreboard players get $total_distance retina.__variable__
execute if data storage retina:input {EndpointEntity: true} summon minecraft:marker run function retina:__private__/anonymous/11