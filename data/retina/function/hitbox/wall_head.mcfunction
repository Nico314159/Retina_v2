execute if block ~ ~ ~ #retina:wall_head[facing=north] run data modify storage retina:data Surfaces set value {Top:[[0.25,0.75,0.5,0.75,0.75,1]],Bottom:[[0.25,0.25,0.5,0.75,0.25,1]],West:[[0.25,0.25,0.5,0.25,0.75,1]],East:[[0.75,0.25,0.5,0.75,0.75,1]],North:[[0.25,0.25,0.5,0.75,0.75,0.5]],South:[[0.25,0.25,1,0.75,0.75,1]]}
execute if block ~ ~ ~ #retina:wall_head[facing=south] run data modify storage retina:data Surfaces set value {Top:[[0.25,0.75,0,0.75,0.75,0.5]],Bottom:[[0.25,0.25,0,0.75,0.25,0.5]],West:[[0.25,0.25,0,0.25,0.75,0.5]],East:[[0.75,0.25,0,0.75,0.75,0.5]],North:[[0.25,0.25,0,0.75,0.75,0]],South:[[0.25,0.25,0.5,0.75,0.75,0.5]]}
execute if block ~ ~ ~ #retina:wall_head[facing=east] run data modify storage retina:data Surfaces set value {Top:[[0,0.75,0.25,0.5,0.75,0.75]],Bottom:[[0,0.25,0.25,0.5,0.25,0.75]],West:[[0,0.25,0.25,0,0.75,0.75]],East:[[0.5,0.25,0.25,0.5,0.75,0.75]],North:[[0,0.25,0.25,0.5,0.75,0.25]],South:[[0,0.25,0.75,0.5,0.75,0.75]]}
execute if block ~ ~ ~ #retina:wall_head[facing=west] run data modify storage retina:data Surfaces set value {Top:[[0.5,0.75,0.25,1,0.75,0.75]],Bottom:[[0.5,0.25,0.25,1,0.25,0.75]],West:[[0.5,0.25,0.25,0.5,0.75,0.75]],East:[[1,0.25,0.25,1,0.75,0.75]],North:[[0.5,0.25,0.25,1,0.75,0.25]],South:[[0.5,0.25,0.75,1,0.75,0.75]]}