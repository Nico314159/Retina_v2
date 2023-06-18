execute if block ~ ~ ~ #minecraft:sweet_berries[age=0] run data modify storage retina:data Surfaces set value {Top:[[192,512,192,832,512,832]],Bottom:[[192,0,192,832,0,832]],West:[[12,0,64,64,512,832]],East:[[832,0,192,832,512,832]],North:[[192,0,192,832,512,192]],South:[[192,0,832,832,512,832]]}
execute if block ~ ~ ~ #minecraft:sweet_berries[age=1] run function retina:hitbox/cactus_shaped
execute if block ~ ~ ~ #minecraft:sweet_berries[age=2] run function retina:hitbox/cactus_shaped
execute if block ~ ~ ~ #minecraft:sweet_berries[age=3] run function retina:hitbox/cubic