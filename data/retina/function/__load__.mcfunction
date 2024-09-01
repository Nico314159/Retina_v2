scoreboard objectives add retina.__variable__ dummy
scoreboard objectives add retina.__int__ dummy
scoreboard players set 480 retina.__int__ 480
scoreboard players set 0 retina.__int__ 0
scoreboard players set 2 retina.__int__ 2
scoreboard players set 3 retina.__int__ 3
scoreboard players set 100 retina.__int__ 100
scoreboard players set 1800 retina.__int__ 1800
scoreboard players set 3600 retina.__int__ 3600
scoreboard players set 20 retina.__int__ 20
scoreboard players set -4 retina.__int__ -4
scoreboard players set -1 retina.__int__ -1
execute unless score __math__.seed retina.__variable__ matches -2147483648..2147483647 run function retina:__private__/math_random/setup
scoreboard players set $single_call retina.__variable__ 1
scoreboard players set $overflow_risk retina.__variable__ 2147483647
scoreboard players operation $overflow_risk retina.__variable__ /= 480 retina.__int__
scoreboard objectives add retina.id dummy
scoreboard objectives add retina.hit dummy
data merge storage retina:input {HorizontalCount:1b,VerticalCount:1b,CenteredCount:0b,SpreadFactor:[100,100],EndpointEntity:0b}
execute unless data storage retina:input MaxRecursionDepth run data merge storage retina:input {MaxRecursionDepth:50}
execute unless data storage retina:input TargetBlocks run data merge storage retina:input {TargetBlocks:true}
execute unless data storage retina:input TargetEntities run data merge storage retina:input {TargetEntities:true}
data merge storage retina:output {ContactCoordinates:[],ContactSurface:[],Distance:0.0d,HitFace:"",PlacingPosition:[],Target:"",TargetedBlock:[]}
execute store success score $old_version_installed retina.__variable__ run scoreboard players add * retina 1
execute if score $old_version_installed retina.__variable__ matches 1.. run function retina:__private__/if_else/33
return 1