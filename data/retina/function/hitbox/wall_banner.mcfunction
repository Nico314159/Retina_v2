execute if block ~ ~ ~ #retina:wall_banner[facing=north] run data modify storage retina:data Surfaces set value {Top:[[0,0.78125,0.875,1,0.78125,1]],Bottom:[[0,0,0.875,1,0,1]],West:[[0,0,0.875,0,0.78125,1]],East:[[1,0,0.875,1,0.78125,1]],North:[[0,0,0.875,1,0.78125,0.875]],South:[[0,0,1,1,0.78125,1]]}
execute if block ~ ~ ~ #retina:wall_banner[facing=south] run data modify storage retina:data Surfaces set value {Top:[[0,0.78125,0,1,0.78125,0.125]],Bottom:[[0,0,0,1,0,0.125]],West:[[0,0,0,0,0.78125,0.125]],East:[[1,0,0,1,0.78125,0.125]],North:[[0,0,0,1,0.78125,0]],South:[[0,0,0.125,1,0.78125,0.125]]}
execute if block ~ ~ ~ #retina:wall_banner[facing=east] run data modify storage retina:data Surfaces set value {Top:[[0.875,0.78125,0,1,0.78125,1]],Bottom:[[0.875,0,0,1,0,1]],West:[[0.875,0,0,0.875,0.78125,1]],East:[[1,0,0,1,0.78125,1]],North:[[0.875,0,0,1,0.78125,0]],South:[[0.875,0,1,1,0.78125,1]]}
execute if block ~ ~ ~ #retina:wall_banner[facing=west] run data modify storage retina:data Surfaces set value {Top:[[0,0.78125,0,0.125,0.78125,1]],Bottom:[[0,0,0,0.125,0,1]],West:[[0,0,0,0,0.78125,1]],East:[[0.125,0,0,0.125,0.78125,1]],North:[[0,0,0,0.125,0.78125,0]],South:[[0,0,1,0.125,0.78125,1]]}