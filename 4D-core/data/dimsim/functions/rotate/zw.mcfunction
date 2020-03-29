scoreboard players operation rotate calculations = zw rotate
function dimsim:rotate/gettrig

# matrix x/w (x/w)
#nothing

# matrix y (ycos-zsin)
scoreboard players operation t1 calculations = @s y
scoreboard players operation t2 calculations = cos calculations
function dimsim:math/skmultiplication
scoreboard players operation t3 calculations = result calculations
scoreboard players operation t1 calculations = @s z
scoreboard players operation t2 calculations = negsin calculations
function dimsim:math/skmultiplication
scoreboard players operation t3 calculations += result calculations




# matrix z (ysin+zcos)
scoreboard players operation t1 calculations = @s y
scoreboard players operation t2 calculations = sin calculations
function dimsim:math/skmultiplication
scoreboard players operation t4 calculations = result calculations
scoreboard players operation t1 calculations = @s z
scoreboard players operation t2 calculations = cos calculations
function dimsim:math/skmultiplication
scoreboard players operation t4 calculations += result calculations




scoreboard players operation @s y = t3 calculations
scoreboard players operation @s z = t4 calculations