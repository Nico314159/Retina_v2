execute if block ~ ~ ~ minecraft:big_dripleaf[facing=north] run data modify storage retina:data Surfaces set value {Top:[[150,390,270,330,390,450]],Bottom:[[150,0,270,330,0,450]],West:[[150,390,270,150,390,450]],East:[[330,390,270,330,390,450]],North:[[150,0,270,330,390,270]],South:[[150,0,450,330,390,450]]}
execute if block ~ ~ ~ minecraft:big_dripleaf[facing=south] run data modify storage retina:data Surfaces set value {Top:[[150,390,30,330,390,210]],Bottom:[[150,0,30,330,0,210]],West:[[150,390,30,150,390,210]],East:[[330,390,30,330,390,210]],North:[[150,0,30,330,390,30]],South:[[150,0,210,330,390,210]]}
execute if block ~ ~ ~ minecraft:big_dripleaf[facing=east] run data modify storage retina:data Surfaces set value {Top:[[30,390,150,210,390,330]],Bottom:[[30,0,150,210,0,330]],West:[[30,390,150,30,390,330]],East:[[210,390,150,210,390,330]],North:[[30,0,150,210,390,150]],South:[[30,0,330,210,390,330]]}
execute if block ~ ~ ~ minecraft:big_dripleaf[facing=west] run data modify storage retina:data Surfaces set value {Top:[[270,390,150,450,390,330]],Bottom:[[270,0,150,450,0,330]],West:[[270,390,150,270,390,330]],East:[[450,390,150,450,390,330]],North:[[270,0,150,450,390,150]],South:[[270,0,330,450,390,330]]}
execute if block ~ ~ ~ minecraft:big_dripleaf[tilt=full] run return 1
execute if block ~ ~ ~ minecraft:big_dripleaf[tilt=partial] run function retina:__private__/if_else/6
execute if block ~ ~ ~ minecraft:big_dripleaf[tilt=partial] run return 1
data modify storage retina:data Surfaces.Top append value [[0,450,0,480,450,480]]
data modify storage retina:data Surfaces.Bottom append value [[0,330,0,480,330,480]]
data modify storage retina:data Surfaces.West append value [[0,450,0,0,450,480]]
data modify storage retina:data Surfaces.East append value [[480,450,0,480,450,480]]
data modify storage retina:data Surfaces.North append value [[0,330,0,480,450,0]]
data modify storage retina:data Surfaces.South append value [[0,330,480,480,450,480]]