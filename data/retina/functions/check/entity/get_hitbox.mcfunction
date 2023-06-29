function retina:__private__/anonymous/0
execute summon marker run function retina:__private__/anonymous/1
scoreboard players operation $entity_X0 retina.__variable__ = $entity_frac_X retina.__variable__
scoreboard players operation $entity_X0 retina.__variable__ -= $entity_half_width retina.__variable__
scoreboard players operation $entity_X0 retina.__variable__ > 0 retina.__int__
scoreboard players operation $entity_X1 retina.__variable__ = $entity_frac_X retina.__variable__
scoreboard players operation $entity_X1 retina.__variable__ += $entity_half_width retina.__variable__
scoreboard players operation $entity_X1 retina.__variable__ < 480 retina.__int__
scoreboard players operation $entity_Z0 retina.__variable__ = $entity_frac_Z retina.__variable__
scoreboard players operation $entity_Z0 retina.__variable__ -= $entity_half_width retina.__variable__
scoreboard players operation $entity_Z0 retina.__variable__ > 0 retina.__int__
scoreboard players operation $entity_Z1 retina.__variable__ = $entity_frac_Z retina.__variable__
scoreboard players operation $entity_Z1 retina.__variable__ += $entity_half_width retina.__variable__
scoreboard players operation $entity_Z1 retina.__variable__ < 480 retina.__int__
scoreboard players operation $entity_Y0 retina.__variable__ = $entity_frac_Y retina.__variable__
scoreboard players operation $entity_Y0 retina.__variable__ > 0 retina.__int__
scoreboard players operation $entity_Y1 retina.__variable__ = $entity_frac_Y retina.__variable__
scoreboard players operation $entity_Y1 retina.__variable__ += $entity_height retina.__variable__
scoreboard players operation $entity_Y1 retina.__variable__ < 480 retina.__int__
data modify storage retina:data Surfaces.Top append value [0,0,0,0,0,0]
data modify storage retina:data Surfaces.Bottom append value [0,0,0,0,0,0]
data modify storage retina:data Surfaces.West append value [0,0,0,0,0,0]
data modify storage retina:data Surfaces.East append value [0,0,0,0,0,0]
data modify storage retina:data Surfaces.North append value [0,0,0,0,0,0]
data modify storage retina:data Surfaces.South append value [0,0,0,0,0,0]
execute store result storage retina:data Surfaces.Top[-1][0] int 1 run scoreboard players get $entity_X0 retina.__variable__
execute store result storage retina:data Surfaces.Top[-1][1] int 1 run scoreboard players get $entity_Y1 retina.__variable__
execute store result storage retina:data Surfaces.Top[-1][2] int 1 run scoreboard players get $entity_Z0 retina.__variable__
execute store result storage retina:data Surfaces.Top[-1][3] int 1 run scoreboard players get $entity_X1 retina.__variable__
execute store result storage retina:data Surfaces.Top[-1][4] int 1 run scoreboard players get $entity_Y1 retina.__variable__
execute store result storage retina:data Surfaces.Top[-1][5] int 1 run scoreboard players get $entity_Z1 retina.__variable__
execute store result storage retina:data Surfaces.Bottom[-1][0] int 1 run scoreboard players get $entity_X0 retina.__variable__
execute store result storage retina:data Surfaces.Bottom[-1][1] int 1 run scoreboard players get $entity_Y0 retina.__variable__
execute store result storage retina:data Surfaces.Bottom[-1][2] int 1 run scoreboard players get $entity_Z0 retina.__variable__
execute store result storage retina:data Surfaces.Bottom[-1][3] int 1 run scoreboard players get $entity_X1 retina.__variable__
execute store result storage retina:data Surfaces.Bottom[-1][4] int 1 run scoreboard players get $entity_Y0 retina.__variable__
execute store result storage retina:data Surfaces.Bottom[-1][5] int 1 run scoreboard players get $entity_Z1 retina.__variable__
execute store result storage retina:data Surfaces.West[-1][0] int 1 run scoreboard players get $entity_X0 retina.__variable__
execute store result storage retina:data Surfaces.West[-1][1] int 1 run scoreboard players get $entity_Y0 retina.__variable__
execute store result storage retina:data Surfaces.West[-1][2] int 1 run scoreboard players get $entity_Z0 retina.__variable__
execute store result storage retina:data Surfaces.West[-1][3] int 1 run scoreboard players get $entity_X0 retina.__variable__
execute store result storage retina:data Surfaces.West[-1][4] int 1 run scoreboard players get $entity_Y1 retina.__variable__
execute store result storage retina:data Surfaces.West[-1][5] int 1 run scoreboard players get $entity_Z1 retina.__variable__
execute store result storage retina:data Surfaces.East[-1][0] int 1 run scoreboard players get $entity_X1 retina.__variable__
execute store result storage retina:data Surfaces.East[-1][1] int 1 run scoreboard players get $entity_Y0 retina.__variable__
execute store result storage retina:data Surfaces.East[-1][2] int 1 run scoreboard players get $entity_Z0 retina.__variable__
execute store result storage retina:data Surfaces.East[-1][3] int 1 run scoreboard players get $entity_X1 retina.__variable__
execute store result storage retina:data Surfaces.East[-1][4] int 1 run scoreboard players get $entity_Y1 retina.__variable__
execute store result storage retina:data Surfaces.East[-1][5] int 1 run scoreboard players get $entity_Z1 retina.__variable__
execute store result storage retina:data Surfaces.North[-1][0] int 1 run scoreboard players get $entity_X0 retina.__variable__
execute store result storage retina:data Surfaces.North[-1][1] int 1 run scoreboard players get $entity_Y0 retina.__variable__
execute store result storage retina:data Surfaces.North[-1][2] int 1 run scoreboard players get $entity_Z0 retina.__variable__
execute store result storage retina:data Surfaces.North[-1][3] int 1 run scoreboard players get $entity_X1 retina.__variable__
execute store result storage retina:data Surfaces.North[-1][4] int 1 run scoreboard players get $entity_Y1 retina.__variable__
execute store result storage retina:data Surfaces.North[-1][5] int 1 run scoreboard players get $entity_Z0 retina.__variable__
execute store result storage retina:data Surfaces.South[-1][0] int 1 run scoreboard players get $entity_X0 retina.__variable__
execute store result storage retina:data Surfaces.South[-1][1] int 1 run scoreboard players get $entity_Y0 retina.__variable__
execute store result storage retina:data Surfaces.South[-1][2] int 1 run scoreboard players get $entity_Z1 retina.__variable__
execute store result storage retina:data Surfaces.South[-1][3] int 1 run scoreboard players get $entity_X1 retina.__variable__
execute store result storage retina:data Surfaces.South[-1][4] int 1 run scoreboard players get $entity_Y1 retina.__variable__
execute store result storage retina:data Surfaces.South[-1][5] int 1 run scoreboard players get $entity_Z1 retina.__variable__
scoreboard players operation $debug_X0 retina.__variable__ = $entity_X0 retina.__variable__
scoreboard players set $k retina.__variable__ 480
scoreboard players operation $k retina.__variable__ *= $step_X retina.__variable__
scoreboard players operation $k retina.__variable__ -= $frac_origin_X retina.__variable__
scoreboard players operation $k retina.__variable__ += $origin_X retina.__variable__
scoreboard players operation $debug_X0 retina.__variable__ += $k retina.__variable__
scoreboard players operation $debug_Y0 retina.__variable__ = $entity_Y0 retina.__variable__
scoreboard players set $k retina.__variable__ 480
scoreboard players operation $k retina.__variable__ *= $step_Y retina.__variable__
scoreboard players operation $k retina.__variable__ -= $frac_origin_Y retina.__variable__
scoreboard players operation $k retina.__variable__ += $origin_Y retina.__variable__
scoreboard players operation $debug_Y0 retina.__variable__ += $k retina.__variable__
scoreboard players operation $debug_Z0 retina.__variable__ = $entity_Z0 retina.__variable__
scoreboard players set $k retina.__variable__ 480
scoreboard players operation $k retina.__variable__ *= $step_Z retina.__variable__
scoreboard players operation $k retina.__variable__ -= $frac_origin_Z retina.__variable__
scoreboard players operation $k retina.__variable__ += $origin_Z retina.__variable__
scoreboard players operation $debug_Z0 retina.__variable__ += $k retina.__variable__
scoreboard players operation $debug_X1 retina.__variable__ = $entity_X1 retina.__variable__
scoreboard players set $k retina.__variable__ 480
scoreboard players operation $k retina.__variable__ *= $step_X retina.__variable__
scoreboard players operation $k retina.__variable__ -= $frac_origin_X retina.__variable__
scoreboard players operation $k retina.__variable__ += $origin_X retina.__variable__
scoreboard players operation $debug_X1 retina.__variable__ += $k retina.__variable__
scoreboard players operation $debug_Y1 retina.__variable__ = $entity_Y1 retina.__variable__
scoreboard players set $k retina.__variable__ 480
scoreboard players operation $k retina.__variable__ *= $step_Y retina.__variable__
scoreboard players operation $k retina.__variable__ -= $frac_origin_Y retina.__variable__
scoreboard players operation $k retina.__variable__ += $origin_Y retina.__variable__
scoreboard players operation $debug_Y1 retina.__variable__ += $k retina.__variable__
scoreboard players operation $debug_Z1 retina.__variable__ = $entity_Z1 retina.__variable__
scoreboard players set $k retina.__variable__ 480
scoreboard players operation $k retina.__variable__ *= $step_Z retina.__variable__
scoreboard players operation $k retina.__variable__ -= $frac_origin_Z retina.__variable__
scoreboard players operation $k retina.__variable__ += $origin_Z retina.__variable__
scoreboard players operation $debug_Z1 retina.__variable__ += $k retina.__variable__
execute if score $debug_messages retina.__variable__ matches 1.. run function retina:__private__/if_else/0
execute if entity @s[type=#retina:item_frame] run tellraw @a {"text":"check/entity/get_hitbox(): item frame found"}
execute if entity @s[type=#retina:item_frame] run function retina:entity_hitbox/item_frame
execute if entity @s[type=#retina:item_frame] if data storage retina:data Surfaces run tellraw @a {"text":"check/entity/get_hitbox(): item frame `Surfaces` collected"}
tag @s add retina.possible_target
scoreboard players operation @s retina.id = $max retina.id
scoreboard players add $max retina.id 1