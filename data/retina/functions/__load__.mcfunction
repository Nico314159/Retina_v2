scoreboard objectives add __variable__ dummy
scoreboard objectives add __int__ dummy
scoreboard players set 192 __int__ 192
scoreboard players set 1800 __int__ 1800
scoreboard players set 3600 __int__ 3600
scoreboard players set -4 __int__ -4
scoreboard players set -1 __int__ -1
scoreboard players set $overflow_risk __variable__ 2147483647
scoreboard players operation $overflow_risk __variable__ /= 192 __int__
execute unless score $max_depth __variable__ = $max_depth __variable__ run scoreboard players set $max_depth __variable__ 150