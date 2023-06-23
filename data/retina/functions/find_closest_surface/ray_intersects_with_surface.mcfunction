scoreboard players set $end retina.__variable__ 1
scoreboard players operation $closest_cuboid_id retina.__variable__ = $cuboid_id retina.__variable__
scoreboard players operation $min_distance_to_surface retina.__variable__ = $distance retina.__variable__
data modify storage retina:data ContactSurface set from storage retina:data List[-1]