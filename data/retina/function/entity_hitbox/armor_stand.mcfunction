data modify storage retina:data EntityTag set from entity @s
execute if data storage retina:data EntityTag{Small:1b} run scoreboard players set $entity_half_width retina.__variable__ 60
execute if data storage retina:data EntityTag{Small:1b} run scoreboard players set $entity_height retina.__variable__ 474
execute unless data storage retina:data EntityTag{Small:1b} run scoreboard players set $entity_half_width retina.__variable__ 120
execute unless data storage retina:data EntityTag{Small:1b} run scoreboard players set $entity_height retina.__variable__ 948
execute if data storage retina:data EntityTag{Marker:1b} store result score $entity_half_width retina.__variable__ run scoreboard players set $entity_height retina.__variable__ 0