function retina:find_closest_surface/ray_intersects_with_surface
data modify storage retina:output HitFace set value 'South'
execute if score $check_for_head retina.__variable__ matches 1.. if score $Y_intersection retina.__variable__ >= $head_Y retina.__variable__ run data modify storage retina:output HitEntityHead set value true