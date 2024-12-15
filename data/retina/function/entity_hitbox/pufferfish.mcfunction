execute store result score $pufferfish_puffstate retina.__variable__ run data get entity @s PuffState
execute if score $pufferfish_puffstate retina.__variable__ matches 0 run data merge storage retina:data {entity_half_width:0.175,entity_height:0.35}
execute if score $pufferfish_puffstate retina.__variable__ matches 1 run data merge storage retina:data {entity_half_width:0.25,entity_height:0.5}
execute if score $pufferfish_puffstate retina.__variable__ matches 2 run data merge storage retina:data {entity_half_width:0.35,entity_height:0.7}