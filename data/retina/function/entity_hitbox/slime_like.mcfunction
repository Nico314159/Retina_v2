scoreboard players set $entity_half_width retina.__variable__ 122
scoreboard players set $entity_height retina.__variable__ 245
execute store result score $slime_size retina.__variable__ run data get entity @s Size
scoreboard players add $slime_size retina.__variable__ 1
scoreboard players operation $entity_half_width retina.__variable__ *= $slime_size retina.__variable__
scoreboard players operation $entity_height retina.__variable__ *= $slime_size retina.__variable__