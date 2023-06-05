scoreboard players set $end __variable__ 1
scoreboard players operation $closest_cuboid_id __variable__ = $cuboid_id __variable__
scoreboard players set $min_distance_to_surface __variable__ 0
data modify storage retina:data ContactSurface set from storage retina:data List[-1]