execute unless block ~ ~ ~ #minecraft:wall_hanging_signs[facing=east] unless block ~ ~ ~ #minecraft:wall_hanging_signs[facing=west] run data modify storage retina:data Surfaces set value {Top:[[0,1,0.375,1,1,0.625],[0.0625,0.625,0.4375,0.9375,0.625,0.5625]],Bottom:[[0,0.875,0.375,1,0.875,0.625],[0.0625,0,0.4375,0.9375,0,0.5625]],West:[[0,0.875,0.375,0,1,0.625],[0.0625,0,0.4375,0.0625,0.625,0.5625]],East:[[1,0.875,0.375,1,1,0.625],[0.9375,0,0.4375,0.9375,0.625,0.5625]],North:[[0,0.875,0.375,1,1,0.375],[0.0625,0,0.4375,0.9375,0.625,0.4375]],South:[[0,0.875,0.625,1,1,0.625],[0.0625,0,0.5625,0.9375,0.625,0.5625]]}
execute unless block ~ ~ ~ #minecraft:wall_hanging_signs[facing=north] unless block ~ ~ ~ #minecraft:wall_hanging_signs[facing=south] run data modify storage retina:data Surfaces set value {Top:[[0.375,1,0,0.625,1,1],[0.4375,0.625,0.0625,0.5625,0.625,0.9375]],Bottom:[[0.375,0.875,0,0.625,0.875,1],[0.4375,0,0.0625,0.5625,0,0.9375]],West:[[0.375,0.875,0,0.375,1,1],[0.4375,0,0.0625,0.4375,0.625,0.9375]],East:[[0.625,0.875,0,0.625,1,1],[0.5625,0,0.0625,0.5625,0.625,0.9375]],North:[[0.375,0.875,0,0.625,1,0],[0.4375,0,0.0625,0.5625,0.625,0.0625]],South:[[0.375,0.875,1,0.625,1,1],[0.4375,0,0.9375,0.5625,0.625,0.9375]]}