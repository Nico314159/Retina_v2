data remove storage retina:data Surfaces
data modify storage retina:data Surfaces set value {Top:[],Bottom:[],West:[],East:[],North:[],South:[]}
function retina:check/block/get_hitbox
execute if data storage retina:data Surfaces run function retina:find_closest_surface/main
execute if score $end retina.__variable__ matches 1.. run scoreboard players operation $block_distance retina.__variable__ = $shortest_distance retina.__variable__