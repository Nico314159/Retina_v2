execute if block ~ ~ ~ minecraft:big_dripleaf[facing=north] run data modify storage retina:data Surfaces set value {Top:[[0.3125,0.8125,0.5625,0.6875,0.8125,0.9375]],Bottom:[[0.3125,0,0.5625,0.6875,0,0.9375]],West:[[0.3125,0,0.5625,0.3125,0.8125,0.9375]],East:[[0.6875,0,0.5625,0.6875,0.8125,0.9375]],North:[[0.3125,0,0.5625,0.6875,0.8125,0.5625]],South:[[0.3125,0,0.9375,0.6875,0.8125,0.9375]]}
execute if block ~ ~ ~ minecraft:big_dripleaf[facing=south] run data modify storage retina:data Surfaces set value {Top:[[0.3125,0.8125,0.0625,0.6875,0.8125,0.4375]],Bottom:[[0.3125,0,0.0625,0.6875,0,0.4375]],West:[[0.3125,0,0.0625,0.3125,0.8125,0.4375]],East:[[0.6875,0,0.0625,0.6875,0.8125,0.4375]],North:[[0.3125,0,0.0625,0.6875,0.8125,0.0625]],South:[[0.3125,0,0.4375,0.6875,0.8125,0.4375]]}
execute if block ~ ~ ~ minecraft:big_dripleaf[facing=east] run data modify storage retina:data Surfaces set value {Top:[[0.0625,0.8125,0.3125,0.4375,0.8125,0.6875]],Bottom:[[0.0625,0,0.3125,0.4375,0,0.6875]],West:[[0.0625,0,0.3125,0.0625,0.8125,0.6875]],East:[[0.4375,0,0.3125,0.4375,0.8125,0.6875]],North:[[0.0625,0,0.3125,0.4375,0.8125,0.3125]],South:[[0.0625,0,0.6875,0.4375,0.8125,0.6875]]}
execute if block ~ ~ ~ minecraft:big_dripleaf[facing=west] run data modify storage retina:data Surfaces set value {Top:[[0.5625,0.8125,0.3125,0.9375,0.8125,0.6875]],Bottom:[[0.5625,0,0.3125,0.9375,0,0.6875]],West:[[0.5625,0,0.3125,0.5625,0.8125,0.6875]],East:[[0.9375,0,0.3125,0.9375,0.8125,0.6875]],North:[[0.5625,0,0.3125,0.9375,0.8125,0.3125]],South:[[0.5625,0,0.6875,0.9375,0.8125,0.6875]]}
execute if block ~ ~ ~ minecraft:big_dripleaf[tilt=full] run return 1
execute if block ~ ~ ~ minecraft:big_dripleaf[tilt=partial] run function retina:__private__/if_else/12
execute if block ~ ~ ~ minecraft:big_dripleaf[tilt=partial] run return 1
data modify storage retina:data Surfaces.Top append value [[0,0.9375,0,1,0.9375,1]]
data modify storage retina:data Surfaces.Bottom append value [[0,0.6875,0,1,0.6875,1]]
data modify storage retina:data Surfaces.West append value [[0,0.6875,0,0,0.9375,1]]
data modify storage retina:data Surfaces.East append value [[1,0.6875,0,1,0.9375,1]]
data modify storage retina:data Surfaces.North append value [[0,0.6875,0,1,0.9375,0]]
data modify storage retina:data Surfaces.South append value [[0,0.6875,1,1,0.9375,1]]