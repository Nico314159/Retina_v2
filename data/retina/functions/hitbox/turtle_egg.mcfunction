execute if block ~ ~ ~ minecraft:turtle_egg[eggs=1] run data modify storage retina:data Surfaces set value {Top:[[192,448,192,768,448,768]],Bottom:[[192,0,192,768,0,768]],West:[[192,0,192,192,448,768]],East:[[768,0,192,768,448,768]],North:[[192,0,192,768,448,192]],South:[[192,0,768,768,448,768]]}
execute unless block ~ ~ ~ minecraft:turtle_egg[eggs=1] run data modify storage retina:data Surfaces set value {Top:[[64,448,64,960,448,960]],Bottom:[[64,0,64,960,0,960]],West:[[64,0,64,64,448,960]],East:[[960,0,64,960,448,960]],North:[[64,0,64,960,448,64]],South:[[64,0,960,960,448,960]]}