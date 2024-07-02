execute if block ~ ~ ~ minecraft:grindstone[face=ceiling] run function retina:__private__/if_else/10
execute if block ~ ~ ~ minecraft:grindstone[face=ceiling] run return 1
execute if block ~ ~ ~ minecraft:grindstone[face=wall] run function retina:__private__/if_else/11
execute if block ~ ~ ~ minecraft:grindstone[face=wall] run return 1
execute if block ~ ~ ~ minecraft:grindstone[facing=north] run data modify storage retina:data Surfaces set value {Top:[[60,210,180,120,210,300],[60,390,150,120,390,330],[360,210,180,420,210,300],[360,390,150,420,390,330],[120,480,60,360,480,420]],Bottom:[[60,0,180,120,0,300],[60,210,150,120,210,330],[360,0,180,420,0,300],[360,210,150,420,210,330],[120,120,60,360,120,420]],West:[[60,0,180,60,210,300],[60,210,150,60,390,330],[360,0,180,360,210,300],[360,210,150,360,390,330],[120,120,60,120,480,420]],East:[[120,0,180,120,210,300],[120,210,150,120,390,330],[420,0,180,420,210,300],[420,210,150,420,390,330],[360,120,60,360,480,420]],North:[[60,0,180,120,210,180],[60,210,150,120,390,150],[360,0,180,420,210,180],[360,210,150,420,390,150],[120,120,60,360,480,60]],South:[[60,0,300,120,210,300],[60,210,330,120,390,330],[360,0,300,420,210,300],[360,210,330,420,390,330],[120,120,420,360,480,420]]}
execute if block ~ ~ ~ minecraft:grindstone[facing=south] run data modify storage retina:data Surfaces set value {Top:[[60,210,180,120,210,300],[60,390,150,120,390,330],[360,210,180,420,210,300],[360,390,150,420,390,330],[120,480,60,360,480,420]],Bottom:[[60,0,180,120,0,300],[60,210,150,120,210,330],[360,0,180,420,0,300],[360,210,150,420,210,330],[120,120,60,360,120,420]],West:[[60,0,180,60,210,300],[60,210,150,60,390,330],[360,0,180,360,210,300],[360,210,150,360,390,330],[120,120,60,120,480,420]],East:[[120,0,180,120,210,300],[120,210,150,120,390,330],[420,0,180,420,210,300],[420,210,150,420,390,330],[360,120,60,360,480,420]],North:[[60,0,180,120,210,180],[60,210,150,120,390,150],[360,0,180,420,210,180],[360,210,150,420,390,150],[120,120,60,360,480,60]],South:[[60,0,300,120,210,300],[60,210,330,120,390,330],[360,0,300,420,210,300],[360,210,330,420,390,330],[120,120,420,360,480,420]]}
execute if block ~ ~ ~ minecraft:grindstone[facing=west] run data modify storage retina:data Surfaces set value {Top:[[180,210,60,300,210,120],[150,390,60,330,390,120],[180,210,360,300,210,420],[150,390,360,330,390,420],[60,480,120,420,480,360]],Bottom:[[180,0,60,300,0,120],[150,210,60,330,210,120],[180,0,360,300,0,420],[150,210,360,330,210,420],[60,120,120,420,120,360]],West:[[180,0,60,180,210,120],[150,210,60,150,390,120],[180,0,360,180,210,420],[150,210,360,150,390,420],[60,120,120,60,480,360]],East:[[300,0,60,300,210,120],[330,210,60,330,390,120],[300,0,360,300,210,420],[330,210,360,330,390,420],[420,120,120,420,480,360]],North:[[180,0,60,300,210,60],[150,210,60,330,390,60],[180,0,360,300,210,360],[150,210,360,330,390,360],[60,120,120,420,480,120]],South:[[180,0,120,300,210,120],[150,210,120,330,390,120],[180,0,420,300,210,420],[150,210,420,330,390,420],[60,120,360,420,480,360]]}
execute if block ~ ~ ~ minecraft:grindstone[facing=east] run data modify storage retina:data Surfaces set value {Top:[[180,210,60,300,210,120],[150,390,60,330,390,120],[180,210,360,300,210,420],[150,390,360,330,390,420],[60,480,120,420,480,360]],Bottom:[[180,0,60,300,0,120],[150,210,60,330,210,120],[180,0,360,300,0,420],[150,210,360,330,210,420],[60,120,120,420,120,360]],West:[[180,0,60,180,210,120],[150,210,60,150,390,120],[180,0,360,180,210,420],[150,210,360,150,390,420],[60,120,120,60,480,360]],East:[[300,0,60,300,210,120],[330,210,60,330,390,120],[300,0,360,300,210,420],[330,210,360,330,390,420],[420,120,120,420,480,360]],North:[[180,0,60,300,210,60],[150,210,60,330,390,60],[180,0,360,300,210,360],[150,210,360,330,390,360],[60,120,120,420,480,120]],South:[[180,0,120,300,210,120],[150,210,120,330,390,120],[180,0,420,300,210,420],[150,210,420,330,390,420],[60,120,360,420,480,360]]}