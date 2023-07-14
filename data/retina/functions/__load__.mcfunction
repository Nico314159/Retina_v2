scoreboard objectives add retina.__variable__ dummy
scoreboard objectives add retina.__int__ dummy
scoreboard players set 480 retina.__int__ 480
scoreboard players set 0 retina.__int__ 0
scoreboard players set 1800 retina.__int__ 1800
scoreboard players set 3600 retina.__int__ 3600
scoreboard players set -4 retina.__int__ -4
scoreboard players set -1 retina.__int__ -1
scoreboard players set $overflow_risk retina.__variable__ 2147483647
scoreboard players operation $overflow_risk retina.__variable__ /= 480 retina.__int__
execute unless score $max_depth retina.__variable__ = $max_depth retina.__variable__ run scoreboard players set $max_depth retina.__variable__ 50
data merge storage retina:input {TargetEntities:true}
data merge storage retina:output {ContactCoordinates:[0.0d,0.0d,0.0d],ContactSurface:[0,0,0,0,0,0],Distance:0.0d,HitFace:"",PlacingPosition:[0,0,0],Target:"",TargetedBlock:[0,0,0]}
execute store success score $old_version_installed retina.__variable__ run scoreboard players add * retina 1
execute if score $old_version_installed retina.__variable__ matches 1.. run function retina:__private__/if_else/26