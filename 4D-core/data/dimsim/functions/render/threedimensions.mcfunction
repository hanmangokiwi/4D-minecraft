scoreboard players operation @s xdisplay = @s x
scoreboard players operation @s ydisplay = @s y
scoreboard players operation @s zdisplay = @s z





execute if score perspective calculations matches 0 run function dimsim:render/4dperspective












execute if score render calculations matches 0 run function dimsim:render/standmethod
execute if score render calculations matches 1 run function dimsim:render/blockmethod
execute if score render calculations matches 2 run function dimsim:render/particlemethod