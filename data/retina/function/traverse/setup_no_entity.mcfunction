data modify storage retina:output Target set value 'NONE'
data modify storage retina:output Distance set from storage retina:input MaxRecursionDepth
data modify storage retina:output HitEntityHead set value false
data remove storage retina:output TargetedBlock
data remove storage retina:output TargetedEntity
data remove storage retina:output PlacingPosition
data remove storage retina:output ContactSurface
data remove storage retina:output ContactCoordinates
data remove storage retina:output HitFace
execute store result score $block_distance retina.__variable__ run scoreboard players set $entity_distance retina.__variable__ 2147483647
execute store result score $hit_block retina.__variable__ store result score $hit_entity retina.__variable__ run scoreboard players set $contact retina.__variable__ 0
execute store result score $max_depth retina.__variable__ run data get storage retina:input MaxRecursionDepth
scoreboard players operation $max_depth retina.__variable__ *= $max_depth retina.__variable__
execute store result score $override_executing retina.__variable__ run data get storage retina:input OverrideExecutingEntity
data remove storage retina:input OverrideExecutingEntity
execute if data storage retina:input ExpandEntityHitboxes store result score $expand_entity_hitboxes retina.__variable__ run data get storage retina:input ExpandEntityHitboxes 480
execute if score $expand_entity_hitboxes retina.__variable__ matches 0 run scoreboard players reset $expand_entity_hitboxes retina.__variable__
data remove storage retina:input ExpandEntityHitboxes
execute unless score $override_executing retina.__variable__ matches 1.. positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[dx=0] add retina.executing
execute unless data retina:input SetupContext summon minecraft:marker run function retina:__private__/anonymous/2
execute store result score $input_pitch retina.__variable__ run data get storage retina:input SetupContext.Rotation[1] 10
execute store result score $input_yaw retina.__variable__ run data get storage retina:input SetupContext.Rotation[0] 10
execute store result score $X retina.__variable__ run data get storage retina:input SetupContext.Pos[0] 480
execute store result score $Y retina.__variable__ run data get storage retina:input SetupContext.Pos[1] 480
execute store result score $Z retina.__variable__ run data get storage retina:input SetupContext.Pos[2] 480
execute store result score $overflow_check_X retina.__variable__ run data get storage retina:input SetupContext.Pos[0] 1
execute store result score $overflow_check_Z retina.__variable__ run data get storage retina:input SetupContext.Pos[2] 1
execute if score $debug_messages retina.__variable__ matches 1.. run tellraw @a ["",{"text":"Pitch: ","bold":false,"color":"white","type":"text"},{"score":{"name":"$input_pitch","objective":"retina.__variable__"},"color":"red","type":"score"},{"text":", ","color":"red"},{"text":"Yaw: ","bold":false,"color":"white","type":"text"},{"score":{"name":"$input_yaw","objective":"retina.__variable__"},"color":"red","type":"score"}]
function retina:math/gimbal_to_vec
execute if score $debug_messages retina.__variable__ matches 1.. run tellraw @a ["",{"text":"Facing Vector: "},{"text":"[","color":"gold","type":"text"},{"score":{"name":"$output_vec3.X","objective":"retina.__variable__"},"color":"gold","type":"score"},{"text":", ","color":"gold"},{"score":{"name":"$output_vec3.Y","objective":"retina.__variable__"},"color":"gold","type":"score"},{"text":", ","color":"gold"},{"score":{"name":"$output_vec3.Z","objective":"retina.__variable__"},"color":"gold","type":"score"},{"text":"]","color":"gold"}]
scoreboard players operation $int_X retina.__variable__ = $overflow_check_X retina.__variable__
scoreboard players operation $test_X retina.__variable__ = $int_X retina.__variable__
scoreboard players operation $test_X retina.__variable__ /= $overflow_risk retina.__variable__
execute unless score $test_X retina.__variable__ matches -1..0 run return run tellraw @a ["",{"text":"[Error] ","color":"dark_red","type":"text"},{"text":"Raycast X coordinate of ","color":"red","type":"text"},{"score":{"name":"$int_X","objective":"retina.__variable__"},"color":"red","type":"score"},{"text":" is out of range (-","color":"red"},{"score":{"name":"$overflow_risk","objective":"retina.__variable__"},"color":"red","type":"score"},{"text":", ","color":"red"},{"score":{"name":"$overflow_risk","objective":"retina.__variable__"},"color":"red","type":"score"},{"text":")","color":"red"}]
scoreboard players operation $int_Z retina.__variable__ = $overflow_check_Z retina.__variable__
scoreboard players operation $test_Z retina.__variable__ = $int_Z retina.__variable__
scoreboard players operation $test_Z retina.__variable__ /= $overflow_risk retina.__variable__
execute unless score $test_Z retina.__variable__ matches -1..0 run return run tellraw @a ["",{"text":"[Error] ","color":"dark_red","type":"text"},{"text":"Raycast Z coordinate of ","color":"red","type":"text"},{"score":{"name":"$int_Z","objective":"retina.__variable__"},"color":"red","type":"score"},{"text":" is out of range (-","color":"red"},{"score":{"name":"$overflow_risk","objective":"retina.__variable__"},"color":"red","type":"score"},{"text":", ","color":"red"},{"score":{"name":"$overflow_risk","objective":"retina.__variable__"},"color":"red","type":"score"},{"text":")","color":"red"}]
scoreboard players operation $origin_X retina.__variable__ = $X retina.__variable__
scoreboard players operation $frac_origin_X retina.__variable__ = $X retina.__variable__
scoreboard players operation $frac_origin_X retina.__variable__ %= 480 retina.__int__
scoreboard players set $step_X retina.__variable__ 0
execute if score $output_vec3.X retina.__variable__ matches ..-1 run scoreboard players set $sign_X retina.__variable__ -1
execute if score $output_vec3.X retina.__variable__ matches 0.. run scoreboard players set $sign_X retina.__variable__ 1
scoreboard players set $delta_X retina.__variable__ 230400
scoreboard players operation $delta_X retina.__variable__ /= $output_vec3.X retina.__variable__
scoreboard players operation $delta_X retina.__variable__ /= $sign_X retina.__variable__
scoreboard players operation $distance_X retina.__variable__ = $X retina.__variable__
scoreboard players operation $distance_X retina.__variable__ *= $sign_X retina.__variable__
scoreboard players operation $distance_X retina.__variable__ *= -1 retina.__int__
scoreboard players operation $distance_X retina.__variable__ %= 480 retina.__int__
scoreboard players operation $distance_X retina.__variable__ *= $delta_X retina.__variable__
scoreboard players operation $distance_X retina.__variable__ /= 480 retina.__int__
execute if score $output_vec3.X retina.__variable__ matches 0 store result score $delta_X retina.__variable__ run scoreboard players set $distance_X retina.__variable__ 2147483647
scoreboard players operation $int_X retina.__variable__ = $X retina.__variable__
scoreboard players operation $int_X retina.__variable__ /= 480 retina.__int__
scoreboard players operation $origin_Y retina.__variable__ = $Y retina.__variable__
scoreboard players operation $frac_origin_Y retina.__variable__ = $Y retina.__variable__
scoreboard players operation $frac_origin_Y retina.__variable__ %= 480 retina.__int__
scoreboard players set $step_Y retina.__variable__ 0
execute if score $output_vec3.Y retina.__variable__ matches ..-1 run scoreboard players set $sign_Y retina.__variable__ -1
execute if score $output_vec3.Y retina.__variable__ matches 0.. run scoreboard players set $sign_Y retina.__variable__ 1
scoreboard players set $delta_Y retina.__variable__ 230400
scoreboard players operation $delta_Y retina.__variable__ /= $output_vec3.Y retina.__variable__
scoreboard players operation $delta_Y retina.__variable__ /= $sign_Y retina.__variable__
scoreboard players operation $distance_Y retina.__variable__ = $Y retina.__variable__
scoreboard players operation $distance_Y retina.__variable__ *= $sign_Y retina.__variable__
scoreboard players operation $distance_Y retina.__variable__ *= -1 retina.__int__
scoreboard players operation $distance_Y retina.__variable__ %= 480 retina.__int__
scoreboard players operation $distance_Y retina.__variable__ *= $delta_Y retina.__variable__
scoreboard players operation $distance_Y retina.__variable__ /= 480 retina.__int__
execute if score $output_vec3.Y retina.__variable__ matches 0 store result score $delta_Y retina.__variable__ run scoreboard players set $distance_Y retina.__variable__ 2147483647
scoreboard players operation $int_Y retina.__variable__ = $Y retina.__variable__
scoreboard players operation $int_Y retina.__variable__ /= 480 retina.__int__
scoreboard players operation $origin_Z retina.__variable__ = $Z retina.__variable__
scoreboard players operation $frac_origin_Z retina.__variable__ = $Z retina.__variable__
scoreboard players operation $frac_origin_Z retina.__variable__ %= 480 retina.__int__
scoreboard players set $step_Z retina.__variable__ 0
execute if score $output_vec3.Z retina.__variable__ matches ..-1 run scoreboard players set $sign_Z retina.__variable__ -1
execute if score $output_vec3.Z retina.__variable__ matches 0.. run scoreboard players set $sign_Z retina.__variable__ 1
scoreboard players set $delta_Z retina.__variable__ 230400
scoreboard players operation $delta_Z retina.__variable__ /= $output_vec3.Z retina.__variable__
scoreboard players operation $delta_Z retina.__variable__ /= $sign_Z retina.__variable__
scoreboard players operation $distance_Z retina.__variable__ = $Z retina.__variable__
scoreboard players operation $distance_Z retina.__variable__ *= $sign_Z retina.__variable__
scoreboard players operation $distance_Z retina.__variable__ *= -1 retina.__int__
scoreboard players operation $distance_Z retina.__variable__ %= 480 retina.__int__
scoreboard players operation $distance_Z retina.__variable__ *= $delta_Z retina.__variable__
scoreboard players operation $distance_Z retina.__variable__ /= 480 retina.__int__
execute if score $output_vec3.Z retina.__variable__ matches 0 store result score $delta_Z retina.__variable__ run scoreboard players set $distance_Z retina.__variable__ 2147483647
scoreboard players operation $int_Z retina.__variable__ = $Z retina.__variable__
scoreboard players operation $int_Z retina.__variable__ /= 480 retina.__int__
execute if score $debug_messages retina.__variable__ matches 1.. run tellraw @a ["",{"text":"Origin: "},{"text":"[","color":"yellow","type":"text"},{"score":{"name":"$int_X","objective":"retina.__variable__"},"color":"yellow","type":"score"},{"text":", ","color":"yellow"},{"score":{"name":"$int_Y","objective":"retina.__variable__"},"color":"yellow","type":"score"},{"text":", ","color":"yellow"},{"score":{"name":"$int_Z","objective":"retina.__variable__"},"color":"yellow","type":"score"},{"text":"]","color":"yellow"}]
scoreboard players set $step retina.__variable__ 0
function retina:traverse/loop
scoreboard players reset $ignore_blocks retina.__variable__
execute if score $hit_block retina.__variable__ matches 1.. run function retina:storage/block
execute if score $hit_entity retina.__variable__ matches 1.. run function retina:storage/entity
scoreboard players reset $expand_entity_hitboxes retina.__variable__
function #retina:on_hit
execute unless score $override_executing retina.__variable__ matches 1.. positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[dx=0] remove retina.executing
scoreboard players reset $override_executing retina.__variable__