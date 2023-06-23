execute if block ~ ~ ~ #minecraft:sweet_berries[age=0] run data modify storage retina:data Surfaces set value {Top:[[36,96,36,156,96,156]],Bottom:[[36,0,36,156,0,156]],West:[[2.25,0,12,12,96,156]],East:[[156,0,36,156,96,156]],North:[[36,0,36,156,96,36]],South:[[36,0,156,156,96,156]]}
execute if block ~ ~ ~ #minecraft:sweet_berries[age=1] run function retina:hitbox/cactus_shaped
execute if block ~ ~ ~ #minecraft:sweet_berries[age=2] run function retina:hitbox/cactus_shaped
execute if block ~ ~ ~ #minecraft:sweet_berries[age=3] run function retina:hitbox/cubic