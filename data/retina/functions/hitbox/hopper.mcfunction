data modify storage retina:data Surfaces set value {Top:[[0,1024,0,1024,1024,1024]],Bottom:[[0,640,0,1024,640,1024],[256,256,256,768,256,768]],West:[[0,640,0,0,1024,1024],[256,256,256,256,640,768]],East:[[1024,640,0,1024,1024,1024],[768,256,256,768,640,768]],North:[[0,640,0,1024,1024,0],[256,256,256,768,640,256]],South:[[0,640,1024,1024,1024,1024],[256,256,768,768,640,768]]}
execute if block ~ ~ ~ minecraft:hopper[facing=east] run function retina:__private__/if_else/6
execute if block ~ ~ ~ minecraft:hopper[facing=west] run function retina:__private__/if_else/7
execute if block ~ ~ ~ minecraft:hopper[facing=south] run function retina:__private__/if_else/8
execute if block ~ ~ ~ minecraft:hopper[facing=north] run function retina:__private__/if_else/9
execute if block ~ ~ ~ minecraft:hopper[facing=down] run function retina:__private__/if_else/10