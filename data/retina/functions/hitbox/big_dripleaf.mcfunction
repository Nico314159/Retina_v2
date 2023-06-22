execute if block ~ ~ ~ minecraft:big_dripleaf[facing=north] run data modify storage retina:data Surfaces set value {Top:[[320,832,576,704,832,960]],Bottom:[[320,0,576,704,0,960]],West:[[320,832,576,320,832,960]],East:[[704,832,576,704,832,960]],North:[[320,0,576,704,832,576]],South:[[320,0,960,704,832,960]]}
execute if block ~ ~ ~ minecraft:big_dripleaf[facing=south] run data modify storage retina:data Surfaces set value {Top:[[320,832,64,704,832,448]],Bottom:[[320,0,64,704,0,448]],West:[[320,832,64,320,832,448]],East:[[704,832,64,704,832,448]],North:[[320,0,64,704,832,64]],South:[[320,0,448,704,832,448]]}
execute if block ~ ~ ~ minecraft:big_dripleaf[facing=east] run data modify storage retina:data Surfaces set value {Top:[[64,832,320,448,832,704]],Bottom:[[64,0,320,448,0,704]],West:[[64,832,320,64,832,704]],East:[[448,832,320,448,832,704]],North:[[64,0,320,448,832,320]],South:[[64,0,704,448,832,704]]}
execute if block ~ ~ ~ minecraft:big_dripleaf[facing=west] run data modify storage retina:data Surfaces set value {Top:[[576,832,320,960,832,704]],Bottom:[[576,0,320,960,0,704]],West:[[576,832,320,576,832,704]],East:[[960,832,320,960,832,704]],North:[[576,0,320,960,832,320]],South:[[576,0,704,960,832,704]]}
execute if block ~ ~ ~ minecraft:big_dripleaf[tilt=full] run return 1
execute if block ~ ~ ~ minecraft:big_dripleaf[tilt=partial] run function retina:__private__/if_else/6
execute if block ~ ~ ~ minecraft:big_dripleaf[tilt=partial] run return 2
data modify storage retina:data Surfaces.Top append value [[0,960,0,1024,960,1024]]
data modify storage retina:data Surfaces.Bottom append value [[0,704,0,1024,704,1024]]
data modify storage retina:data Surfaces.West append value [[0,960,0,0,960,1024]]
data modify storage retina:data Surfaces.East append value [[1024,960,0,1024,960,1024]]
data modify storage retina:data Surfaces.North append value [[0,704,0,1024,960,0]]
data modify storage retina:data Surfaces.South append value [[0,704,1024,1024,960,1024]]