data modify storage retina:data Surfaces set value {Top:[[0,480,0,480,480,480]],Bottom:[[0,300,0,480,300,480],[120,120,120,360,120,360]],West:[[0,300,0,0,480,480],[120,120,120,120,300,360]],East:[[480,300,0,480,480,480],[360,120,120,360,300,360]],North:[[0,300,0,480,480,0],[120,120,120,360,300,120]],South:[[0,300,480,480,480,480],[120,120,360,360,300,360]]}
execute if block ~ ~ ~ minecraft:hopper[facing=east] run function retina:__private__/if_else/10
execute if block ~ ~ ~ minecraft:hopper[facing=west] run function retina:__private__/if_else/11
execute if block ~ ~ ~ minecraft:hopper[facing=south] run function retina:__private__/if_else/12
execute if block ~ ~ ~ minecraft:hopper[facing=north] run function retina:__private__/if_else/13
execute if block ~ ~ ~ minecraft:hopper[facing=down] run function retina:__private__/if_else/14