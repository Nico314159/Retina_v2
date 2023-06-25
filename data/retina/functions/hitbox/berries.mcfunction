execute if block ~ ~ ~ #minecraft:sweet_berries[age=0] run data modify storage retina:data Surfaces set value {Top:[[90,240,90,390,240,390]],Bottom:[[90,0,90,390,0,390]],West:[[5.62.5,0,30,30,240,390]],East:[[390,0,90,390,240,390]],North:[[90,0,90,390,240,90]],South:[[90,0,390,390,240,390]]}
execute if block ~ ~ ~ #minecraft:sweet_berries[age=1] run function retina:hitbox/cactus_shaped
execute if block ~ ~ ~ #minecraft:sweet_berries[age=2] run function retina:hitbox/cactus_shaped
execute if block ~ ~ ~ #minecraft:sweet_berries[age=3] run function retina:hitbox/cubic