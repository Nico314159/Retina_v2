scoreboard players operation __math__.seed retina.__variable__ *= __math__.rng.a retina.__variable__
scoreboard players operation __math__.seed retina.__variable__ += __math__.rng.c retina.__variable__
scoreboard players operation __math__.rng.result retina.__variable__ = __math__.seed retina.__variable__
scoreboard players operation __math__.tmp retina.__variable__ = __math__.rng.result retina.__variable__
scoreboard players operation __math__.rng.result retina.__variable__ %= __math__.rng.bound retina.__variable__
scoreboard players operation __math__.tmp retina.__variable__ -= __math__.rng.result retina.__variable__
scoreboard players operation __math__.tmp retina.__variable__ += __math__.rng.bound retina.__variable__
execute if score __math__.tmp retina.__variable__ matches ..0 run function retina:__private__/math_random/main