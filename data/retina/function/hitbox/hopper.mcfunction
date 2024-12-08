data modify storage retina:data Surfaces set value {Top:[[0,1,0,1,1,1]],Bottom:[[0,0.625,0,1,0.625,1],[0.25,0.25,0.25,0.75,0.25,0.75]],West:[[0,0.625,0,0,1,1],[0.25,0.25,0.25,0.25,0.625,0.75]],East:[[1,0.625,0,1,1,1],[0.75,0.25,0.25,0.75,0.625,0.75]],North:[[0,0.625,0,1,1,0],[0.25,0.25,0.25,0.75,0.625,0.25]],South:[[0,0.625,1,1,1,1],[0.25,0.25,0.75,0.75,0.625,0.75]]}
execute if block ~ ~ ~ minecraft:hopper[facing=east] run function retina:__private__/if_else/15
execute if block ~ ~ ~ minecraft:hopper[facing=west] run function retina:__private__/if_else/16
execute if block ~ ~ ~ minecraft:hopper[facing=south] run function retina:__private__/if_else/17
execute if block ~ ~ ~ minecraft:hopper[facing=north] run function retina:__private__/if_else/18
execute if block ~ ~ ~ minecraft:hopper[facing=down] run function retina:__private__/if_else/19