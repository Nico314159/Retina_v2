scoreboard players operation $input __variable__ = $input_yaw __variable__
function retina:math/sine
scoreboard players operation $output_vec3.X __variable__ = $output __variable__
scoreboard players operation $output_vec3.X __variable__ *= -1 __int__
function retina:math/cosine
scoreboard players operation $output_vec3.Z __variable__ = $output __variable__
scoreboard players operation $input __variable__ = $input_pitch __variable__
function retina:math/cosine
scoreboard players operation $output_vec_horizontal __variable__ = $output __variable__
scoreboard players operation $output_vec3.X __variable__ *= $output __variable__
scoreboard players operation $output_vec3.Z __variable__ *= $output __variable__
scoreboard players operation $output_vec3.X __variable__ /= 1024 __int__
scoreboard players operation $output_vec3.Z __variable__ /= 1024 __int__
function retina:math/sine
scoreboard players operation $output_vec3.Y __variable__ = $output __variable__
scoreboard players operation $output_vec3.Y __variable__ *= -1 __int__