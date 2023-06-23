execute unless block ~ ~ ~ #retina:piston[extended=true] run function retina:hitbox/cubic
execute unless block ~ ~ ~ #retina:piston[extended=true] run return 1
execute if block ~ ~ ~ #retina:piston[facing=east] run data modify storage retina:data Surfaces set value {Top:[[0,192,0,144,192,192]],Bottom:[[0,0,0,144,0,192]],West:[[0,192,0,0,192,192]],East:[[144,192,0,144,192,192]],North:[[0,0,0,144,192,0]],South:[[0,0,192,144,192,192]]}
execute if block ~ ~ ~ #retina:piston[facing=west] run data modify storage retina:data Surfaces set value {Top:[[48,192,0,192,192,192]],Bottom:[[48,0,0,192,0,192]],West:[[48,192,0,48,192,192]],East:[[192,192,0,192,192,192]],North:[[48,0,0,192,192,0]],South:[[48,0,192,192,192,192]]}
execute if block ~ ~ ~ #retina:piston[facing=south] run data modify storage retina:data Surfaces set value {Top:[[0,192,0,192,192,144]],Bottom:[[0,0,0,192,0,144]],West:[[0,192,0,0,192,144]],East:[[192,192,0,192,192,144]],North:[[0,0,0,192,192,0]],South:[[0,0,144,192,192,144]]}
execute if block ~ ~ ~ #retina:piston[facing=north] run data modify storage retina:data Surfaces set value {Top:[[0,192,48,192,192,192]],Bottom:[[0,0,48,192,0,192]],West:[[0,192,48,0,192,192]],East:[[192,192,48,192,192,192]],North:[[0,0,48,192,192,48]],South:[[0,0,192,192,192,192]]}
execute if block ~ ~ ~ #retina:piston[facing=up] run data modify storage retina:data Surfaces set value {Top:[[0,144,0,192,144,192]],Bottom:[[0,0,0,192,0,192]],West:[[0,144,0,0,144,192]],East:[[192,144,0,192,144,192]],North:[[0,0,0,192,144,0]],South:[[0,0,192,192,144,192]]}
execute if block ~ ~ ~ #retina:piston[facing=down] run data modify storage retina:data Surfaces set value {Top:[[0,192,0,192,192,192]],Bottom:[[0,48,0,192,48,192]],West:[[0,192,0,0,192,192]],East:[[192,192,0,192,192,192]],North:[[0,48,0,192,192,0]],South:[[0,48,192,192,192,192]]}