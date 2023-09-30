execute store result score $item_frame_facing retina.__variable__ run data get entity @s Facing
execute store result storage retina:retina.__storage__ switch_key int 1 run scoreboard players get $item_frame_facing retina.__variable__
function retina:__private__/switch_case/0/select with storage retina:retina.__storage__