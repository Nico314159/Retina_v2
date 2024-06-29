scoreboard players operation __math__.x retina.__variable__ = __math__.x_n retina.__variable__
scoreboard players operation __math__.x_n retina.__variable__ = __math__.N retina.__variable__
scoreboard players operation __math__.x_n retina.__variable__ /= __math__.x retina.__variable__
scoreboard players operation __math__.x_n retina.__variable__ += __math__.x retina.__variable__
scoreboard players operation __math__.x_n retina.__variable__ /= 2 retina.__int__
scoreboard players operation __math__.different retina.__variable__ = __math__.x retina.__variable__
scoreboard players operation __math__.different retina.__variable__ -= __math__.x_n retina.__variable__
execute unless score __math__.different retina.__variable__ matches 0..1 run function retina:__private__/math_sqrt/newton_raphson