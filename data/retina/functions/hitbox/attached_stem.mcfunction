execute if block ~ ~ ~ #retina:attached_stem[facing=east] run data modify storage retina:data Surfaces set value {Top:[[384,640,384,1024,640,640]],Bottom:[[384,0,384,1024,0,640]],West:[[384,0,384,384,640,640]],East:[[1024,0,384,1024,640,640]],North:[[384,0,384,1024,640,384]],South:[[384,0,640,1024,640,640]]}
execute if block ~ ~ ~ #retina:attached_stem[facing=west] run data modify storage retina:data Surfaces set value {Top:[[0,640,384,640,640,640]],Bottom:[[0,0,384,640,0,640]],West:[[0,0,384,0,640,640]],East:[[640,0,384,640,640,640]],North:[[0,0,384,640,640,384]],South:[[0,0,640,640,640,640]]}
execute if block ~ ~ ~ #retina:attached_stem[facing=north] run data modify storage retina:data Surfaces set value {Top:[[384,640,0,640,640,640]],Bottom:[[384,0,0,640,0,640]],West:[[384,0,0,384,640,640]],East:[[640,0,0,640,640,640]],North:[[384,0,0,640,640,0]],South:[[384,0,640,640,640,640]]}
execute if block ~ ~ ~ #retina:attached_stem[facing=south] run data modify storage retina:data Surfaces set value {Top:[[384,640,384,640,640,1024]],Bottom:[[384,0,384,640,0,1024]],West:[[384,0,384,384,640,1024]],East:[[640,0,384,640,640,1024]],North:[[384,0,384,640,640,384]],South:[[384,0,1024,640,640,1024]]}