execute if block ~ ~ ~ minecraft:big_dripleaf[facing=north] run data modify storage retina:data Surfaces set value {Top:[[60,156,108,132,156,180]],Bottom:[[60,0,108,132,0,180]],West:[[60,156,108,60,156,180]],East:[[132,156,108,132,156,180]],North:[[60,0,108,132,156,108]],South:[[60,0,180,132,156,180]]}
execute if block ~ ~ ~ minecraft:big_dripleaf[facing=south] run data modify storage retina:data Surfaces set value {Top:[[60,156,12,132,156,84]],Bottom:[[60,0,12,132,0,84]],West:[[60,156,12,60,156,84]],East:[[132,156,12,132,156,84]],North:[[60,0,12,132,156,12]],South:[[60,0,84,132,156,84]]}
execute if block ~ ~ ~ minecraft:big_dripleaf[facing=east] run data modify storage retina:data Surfaces set value {Top:[[12,156,60,84,156,132]],Bottom:[[12,0,60,84,0,132]],West:[[12,156,60,12,156,132]],East:[[84,156,60,84,156,132]],North:[[12,0,60,84,156,60]],South:[[12,0,132,84,156,132]]}
execute if block ~ ~ ~ minecraft:big_dripleaf[facing=west] run data modify storage retina:data Surfaces set value {Top:[[108,156,60,180,156,132]],Bottom:[[108,0,60,180,0,132]],West:[[108,156,60,108,156,132]],East:[[180,156,60,180,156,132]],North:[[108,0,60,180,156,60]],South:[[108,0,132,180,156,132]]}
execute if block ~ ~ ~ minecraft:big_dripleaf[tilt=full] run return 1
execute if block ~ ~ ~ minecraft:big_dripleaf[tilt=partial] run function retina:__private__/if_else/6
execute if block ~ ~ ~ minecraft:big_dripleaf[tilt=partial] run return 1
data modify storage retina:data Surfaces.Top append value [[0,180,0,192,180,192]]
data modify storage retina:data Surfaces.Bottom append value [[0,132,0,192,132,192]]
data modify storage retina:data Surfaces.West append value [[0,180,0,0,180,192]]
data modify storage retina:data Surfaces.East append value [[192,180,0,192,180,192]]
data modify storage retina:data Surfaces.North append value [[0,132,0,192,180,0]]
data modify storage retina:data Surfaces.South append value [[0,132,192,192,180,192]]