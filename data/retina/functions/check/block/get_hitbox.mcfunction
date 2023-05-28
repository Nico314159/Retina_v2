scoreboard players set $block_found __variable__ 0
scoreboard players set $block.anvil __variable__ 0
execute unless score $block_found __variable__ matches 1.. store success score $block.anvil __variable__ if block ~ ~ ~ #retina:anvil
scoreboard players operation $block_found __variable__ = $block.anvil __variable__
execute if score $block.anvil __variable__ matches 1.. run function retina:hitbox/anvil
execute if block ~ ~ ~ minecraft:honey_block if score $honey_exception __variable__ matches 1.. run function retina:__private__/if_else/4
execute unless score $block_found __variable__ matches 1.. run function retina:hitbox/cubic