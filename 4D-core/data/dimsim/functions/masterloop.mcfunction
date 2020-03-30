function dimsim:rotate/beginrotate


scoreboard players operation x rotate += x rotatevelocity
scoreboard players operation y rotate += y rotatevelocity
scoreboard players operation z rotate += z rotatevelocity

scoreboard players operation xy rotate += xy rotatevelocity
scoreboard players operation xz rotate += xz rotatevelocity
scoreboard players operation xw rotate += xw rotatevelocity
scoreboard players operation yz rotate += yz rotatevelocity
scoreboard players operation yw rotate += yw rotatevelocity
scoreboard players operation zw rotate += zw rotatevelocity




replaceitem entity @p hotbar.4 minecraft:carrot_on_a_stick{controller:1,display:{Name:'{"text":"Move around to control","italic":false,"color":"white"}'},HideFlags:63,Enchantments:[{id:"minecraft:sharpness",lvl:1s}]} 1
replaceitem entity @p hotbar.5 minecraft:carrot_on_a_stick{controller:1,display:{Name:'{"text":"Move around to control","italic":false,"color":"white"}'},HideFlags:63,Enchantments:[{id:"minecraft:sharpness",lvl:1s}]} 1


replaceitem entity @p hotbar.6 minecraft:redstone_torch{controller:1,display:{Name:'{"text":"Move around to control","italic":false,"color":"white"}'},HideFlags:63,Enchantments:[{id:"minecraft:sharpness",lvl:1s}]} 1
replaceitem entity @p hotbar.7 minecraft:repeater{controller:2,display:{Name:'{"text":"Move around to control","italic":false,"color":"white"}'},HideFlags:63,Enchantments:[{id:"minecraft:sharpness",lvl:1s}]} 1
replaceitem entity @p hotbar.8 minecraft:comparator{controller:3,display:{Name:'{"text":"Move around to control","italic":false,"color":"white"}'},HideFlags:63,Enchantments:[{id:"minecraft:sharpness",lvl:1s}]} 1

kill @e[type=item]





execute as @a[nbt={SelectedItem:{id:"minecraft:redstone_torch",tag:{controller:1}}}] at @s run function dimsim:control/controller1
execute as @a[nbt={SelectedItem:{id:"minecraft:repeater",tag:{controller:2}}}] at @s run function dimsim:control/controller2
execute as @a[nbt={SelectedItem:{id:"minecraft:comparator",tag:{controller:3}}}] at @s run function dimsim:control/controller3

execute as @a[tag=hascontrol] at @s run function dimsim:control/controllerstop