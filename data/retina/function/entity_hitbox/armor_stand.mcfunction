data modify storage retina:data EntityTag set from entity @s
execute if data storage retina:data EntityTag{Small:1b} run data merge storage retina:data {entity_half_width:0.125,entity_height:0.9875}
execute unless data storage retina:data EntityTag{Small:1b} run data merge storage retina:data {entity_half_width:0.25,entity_height:1.975}
execute if data storage retina:data EntityTag{Marker:1b} run data merge storage retina:data {entity_half_width:0.0,entity_height:0.0}