data modify storage retina:data Pos set from entity @s Pos
execute store result score $entity_frac_X retina.__variable__ run data get storage retina:data Pos[0] 480
scoreboard players set $temp retina.__variable__ 480
scoreboard players operation $temp retina.__variable__ *= $int_X retina.__variable__
scoreboard players operation $entity_frac_X retina.__variable__ -= $temp retina.__variable__
execute store result score $entity_frac_Y retina.__variable__ run data get storage retina:data Pos[1] 480
scoreboard players set $temp retina.__variable__ 480
scoreboard players operation $temp retina.__variable__ *= $int_Y retina.__variable__
scoreboard players operation $entity_frac_Y retina.__variable__ -= $temp retina.__variable__
execute store result score $entity_frac_Z retina.__variable__ run data get storage retina:data Pos[2] 480
scoreboard players set $temp retina.__variable__ 480
scoreboard players operation $temp retina.__variable__ *= $int_Z retina.__variable__
scoreboard players operation $entity_frac_Z retina.__variable__ -= $temp retina.__variable__
data remove storage retina:data Pos
kill @s