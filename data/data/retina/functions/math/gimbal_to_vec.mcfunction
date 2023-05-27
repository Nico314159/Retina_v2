scoreboard players operation $input __var__ = $input_yaw __var__
function retina:math/sine
scoreboard players operation $output_vec3.x __var__ = $output __var__
scoreboard players operation $output_vec3.x __var__ *= -1 __const__
function retina:math/cosine
scoreboard players operation $output_vec3.z __var__ = $output __var__
scoreboard players operation $input __var__ = $input_pitch __var__
function retina:math/cosine
scoreboard players operation $output_vec_horizontal __var__ = $output __var__
scoreboard players operation $output_vec3.x __var__ *= $output __var__
scoreboard players operation $output_vec3.z __var__ *= $output __var__
scoreboard players operation $output_vec3.x __var__ /= 1000 __const__
scoreboard players operation $output_vec3.z __var__ /= 1000 __const__
function retina:math/sine
scoreboard players operation $output_vec3.y __var__ = $output __var__
scoreboard players operation $output_vec3.y __var__ *= -1 __const__