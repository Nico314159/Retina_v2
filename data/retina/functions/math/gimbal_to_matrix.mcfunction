scoreboard players operation $input retina.__variable__ = $input_pitch retina.__variable__
function retina:math/sine
scoreboard players operation $sin_X retina.__variable__ = $output retina.__variable__
function retina:math/cosine
scoreboard players operation $cos_X retina.__variable__ = $output retina.__variable__
scoreboard players operation $input retina.__variable__ = $input_yaw retina.__variable__
function retina:math/sine
scoreboard players operation $sin_Y retina.__variable__ = $output retina.__variable__
function retina:math/cosine
scoreboard players operation $cos_Y retina.__variable__ = $output retina.__variable__
scoreboard players operation $output_mat3.XX retina.__variable__ = $cos_Y retina.__variable__
scoreboard players set $output_mat3.XY retina.__variable__ 0
scoreboard players operation $output_mat3.XZ retina.__variable__ = $sin_Y retina.__variable__
scoreboard players operation $output_mat3.YX retina.__variable__ = $sin_Y retina.__variable__
scoreboard players operation $output_mat3.YX retina.__variable__ *= $sin_X retina.__variable__
scoreboard players operation $output_mat3.YX retina.__variable__ *= -1 retina.__int__
scoreboard players operation $output_mat3.YX retina.__variable__ /= 480 retina.__int__
scoreboard players operation $output_mat3.YY retina.__variable__ = $cos_X retina.__variable__
scoreboard players operation $output_mat3.YZ retina.__variable__ = $cos_Y retina.__variable__
scoreboard players operation $output_mat3.YZ retina.__variable__ *= $sin_X retina.__variable__
scoreboard players operation $output_mat3.YZ retina.__variable__ /= 480 retina.__int__
scoreboard players operation $output_mat3.ZX retina.__variable__ = $sin_Y retina.__variable__
scoreboard players operation $output_mat3.ZX retina.__variable__ *= $cos_X retina.__variable__
scoreboard players operation $output_mat3.ZX retina.__variable__ *= -1 retina.__int__
scoreboard players operation $output_mat3.ZX retina.__variable__ /= 480 retina.__int__
scoreboard players operation $output_mat3.ZY retina.__variable__ = $sin_X retina.__variable__
scoreboard players operation $output_mat3.ZY retina.__variable__ *= -1 retina.__int__
scoreboard players operation $output_mat3.ZZ retina.__variable__ = $cos_Y retina.__variable__
scoreboard players operation $output_mat3.ZZ retina.__variable__ *= $cos_X retina.__variable__
scoreboard players operation $output_mat3.ZZ retina.__variable__ /= 480 retina.__int__