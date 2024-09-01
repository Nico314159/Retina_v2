execute if block ~ ~ ~ minecraft:bell[attachment=floor] unless block ~ ~ ~ minecraft:bell[facing=north] unless block ~ ~ ~ minecraft:bell[facing=south] run data modify storage retina:data Surfaces set value {Top:[[120,480,0,360,480,480]],Bottom:[[120,0,0,360,0,480]],West:[[120,0,0,120,480,480]],East:[[360,0,0,360,480,480]],North:[[120,0,0,360,480,0]],South:[[120,0,480,360,480,480]]}
execute if block ~ ~ ~ minecraft:bell[attachment=floor] unless block ~ ~ ~ minecraft:bell[facing=east] unless block ~ ~ ~ minecraft:bell[facing=west] run data modify storage retina:data Surfaces set value {Top:[[0,480,120,480,480,360]],Bottom:[[0,0,120,480,0,360]],West:[[0,0,120,0,480,360]],East:[[480,0,120,480,480,360]],North:[[0,0,120,480,480,120]],South:[[0,0,360,480,480,360]]}
execute if block ~ ~ ~ minecraft:bell[attachment=floor] run return 1
data modify storage retina:data Surfaces set value {Top:[[150,390,150,330,390,330],[120,180,120,360,180,360]],Bottom:[[150,180,150,330,180,330],[120,120,120,360,120,360]],West:[[150,180,150,150,390,330],[120,120,120,120,180,360]],East:[[330,180,150,330,390,330],[420,120,120,360,180,360]],North:[[150,180,150,330,390,150],[120,120,120,360,180,120]],South:[[150,180,330,330,390,330],[120,120,360,360,180,360]]}
execute if block ~ ~ ~ minecraft:bell[attachment=ceiling] run data modify storage retina:data Surfaces.Top append value [[210,480,210,270,480,270]]
execute if block ~ ~ ~ minecraft:bell[attachment=ceiling] run data modify storage retina:data Surfaces.Bottom append value [[210,390,210,270,390,270]]
execute if block ~ ~ ~ minecraft:bell[attachment=ceiling] run data modify storage retina:data Surfaces.West append value [[210,390,210,210,480,270]]
execute if block ~ ~ ~ minecraft:bell[attachment=ceiling] run data modify storage retina:data Surfaces.East append value [[270,390,210,270,480,270]]
execute if block ~ ~ ~ minecraft:bell[attachment=ceiling] run data modify storage retina:data Surfaces.North append value [[210,390,210,270,480,210]]
execute if block ~ ~ ~ minecraft:bell[attachment=ceiling] run data modify storage retina:data Surfaces.South append value [[210,390,270,270,480,270]]
execute if block ~ ~ ~ minecraft:bell[attachment=ceiling] run return 1
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=west] run data modify storage retina:data Surfaces.Top append value [[0,450,210,390,450,270]]
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=west] run data modify storage retina:data Surfaces.Bottom append value [[0,390,210,390,390,270]]
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=west] run data modify storage retina:data Surfaces.West append value [[0,390,210,0,450,270]]
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=west] run data modify storage retina:data Surfaces.East append value [[390,390,210,390,450,270]]
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=west] run data modify storage retina:data Surfaces.North append value [[0,390,210,390,450,210]]
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=west] run data modify storage retina:data Surfaces.South append value [[0,390,270,390,450,270]]
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=west] run return 1
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=east] run data modify storage retina:data Surfaces.Top append value [[90,450,210,480,450,270]]
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=east] run data modify storage retina:data Surfaces.Bottom append value [[90,390,210,480,390,270]]
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=east] run data modify storage retina:data Surfaces.West append value [[90,390,210,90,450,270]]
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=east] run data modify storage retina:data Surfaces.East append value [[480,390,210,480,450,270]]
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=east] run data modify storage retina:data Surfaces.North append value [[90,390,210,480,450,210]]
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=east] run data modify storage retina:data Surfaces.South append value [[90,390,270,480,450,270]]
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=east] run return 1
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=north] run data modify storage retina:data Surfaces.Top append value [[210,450,0,270,450,390]]
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=north] run data modify storage retina:data Surfaces.Bottom append value [[210,390,0,270,390,390]]
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=north] run data modify storage retina:data Surfaces.West append value [[210,390,0,210,450,390]]
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=north] run data modify storage retina:data Surfaces.East append value [[270,390,0,270,450,390]]
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=north] run data modify storage retina:data Surfaces.North append value [[210,390,0,270,450,0]]
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=north] run data modify storage retina:data Surfaces.South append value [[210,390,390,270,450,390]]
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=north] run return 1
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=south] run data modify storage retina:data Surfaces.Top append value [[210,450,90,270,450,480]]
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=south] run data modify storage retina:data Surfaces.Bottom append value [[210,390,90,270,390,480]]
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=south] run data modify storage retina:data Surfaces.West append value [[210,390,90,210,450,480]]
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=south] run data modify storage retina:data Surfaces.East append value [[270,390,90,270,450,480]]
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=south] run data modify storage retina:data Surfaces.North append value [[210,390,90,270,450,90]]
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=south] run data modify storage retina:data Surfaces.South append value [[210,390,480,270,450,480]]
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=south] run return 1
execute if block ~ ~ ~ minecraft:bell[attachment=double_wall] unless block ~ ~ ~ minecraft:bell[facing=north] unless block ~ ~ ~ minecraft:bell[facing=south] run data modify storage retina:data Surfaces.Top append value [[0,450,210,480,450,270]]
execute if block ~ ~ ~ minecraft:bell[attachment=double_wall] unless block ~ ~ ~ minecraft:bell[facing=north] unless block ~ ~ ~ minecraft:bell[facing=south] run data modify storage retina:data Surfaces.Bottom append value [[0,390,210,480,390,270]]
execute if block ~ ~ ~ minecraft:bell[attachment=double_wall] unless block ~ ~ ~ minecraft:bell[facing=north] unless block ~ ~ ~ minecraft:bell[facing=south] run data modify storage retina:data Surfaces.West append value [[0,390,210,0,450,270]]
execute if block ~ ~ ~ minecraft:bell[attachment=double_wall] unless block ~ ~ ~ minecraft:bell[facing=north] unless block ~ ~ ~ minecraft:bell[facing=south] run data modify storage retina:data Surfaces.East append value [[480,390,210,480,450,270]]
execute if block ~ ~ ~ minecraft:bell[attachment=double_wall] unless block ~ ~ ~ minecraft:bell[facing=north] unless block ~ ~ ~ minecraft:bell[facing=south] run data modify storage retina:data Surfaces.North append value [[0,390,210,480,450,210]]
execute if block ~ ~ ~ minecraft:bell[attachment=double_wall] unless block ~ ~ ~ minecraft:bell[facing=north] unless block ~ ~ ~ minecraft:bell[facing=south] run data modify storage retina:data Surfaces.South append value [[0,390,270,480,450,270]]
execute if block ~ ~ ~ minecraft:bell[attachment=double_wall] unless block ~ ~ ~ minecraft:bell[facing=north] unless block ~ ~ ~ minecraft:bell[facing=south] run return 1
execute if block ~ ~ ~ minecraft:bell[attachment=double_wall] unless block ~ ~ ~ minecraft:bell[facing=east] unless block ~ ~ ~ minecraft:bell[facing=west] run data modify storage retina:data Surfaces.Top append value [[210,450,0,270,450,480]]
execute if block ~ ~ ~ minecraft:bell[attachment=double_wall] unless block ~ ~ ~ minecraft:bell[facing=east] unless block ~ ~ ~ minecraft:bell[facing=west] run data modify storage retina:data Surfaces.Bottom append value [[210,390,0,270,390,480]]
execute if block ~ ~ ~ minecraft:bell[attachment=double_wall] unless block ~ ~ ~ minecraft:bell[facing=east] unless block ~ ~ ~ minecraft:bell[facing=west] run data modify storage retina:data Surfaces.West append value [[210,390,0,210,450,480]]
execute if block ~ ~ ~ minecraft:bell[attachment=double_wall] unless block ~ ~ ~ minecraft:bell[facing=east] unless block ~ ~ ~ minecraft:bell[facing=west] run data modify storage retina:data Surfaces.East append value [[270,390,0,270,450,480]]
execute if block ~ ~ ~ minecraft:bell[attachment=double_wall] unless block ~ ~ ~ minecraft:bell[facing=east] unless block ~ ~ ~ minecraft:bell[facing=west] run data modify storage retina:data Surfaces.North append value [[210,390,0,270,450,0]]
execute if block ~ ~ ~ minecraft:bell[attachment=double_wall] unless block ~ ~ ~ minecraft:bell[facing=east] unless block ~ ~ ~ minecraft:bell[facing=west] run data modify storage retina:data Surfaces.South append value [[210,390,480,270,450,480]]
execute if block ~ ~ ~ minecraft:bell[attachment=double_wall] unless block ~ ~ ~ minecraft:bell[facing=east] unless block ~ ~ ~ minecraft:bell[facing=west] run return 1