data modify storage retina:data Surfaces set value {Top:[[0,192,0,192,192,192]],Bottom:[[0,120,0,192,120,192],[48,48,48,144,48,144]],West:[[0,120,0,0,192,192],[48,48,48,48,120,144]],East:[[192,120,0,192,192,192],[144,48,48,144,120,144]],North:[[0,120,0,192,192,0],[48,48,48,144,120,48]],South:[[0,120,192,192,192,192],[48,48,144,144,120,144]]}
execute if block ~ ~ ~ minecraft:hopper[facing=east] run function retina:__private__/if_else/7
execute if block ~ ~ ~ minecraft:hopper[facing=west] run function retina:__private__/if_else/8
execute if block ~ ~ ~ minecraft:hopper[facing=south] run function retina:__private__/if_else/9
execute if block ~ ~ ~ minecraft:hopper[facing=north] run function retina:__private__/if_else/10
execute if block ~ ~ ~ minecraft:hopper[facing=down] run function retina:__private__/if_else/11