execute if score render calculations matches 2 run scoreboard players set @p calculations 1
execute if entity @a[scores={calculations=1..}] run function dimsim:rotate/beginrotate



replaceitem entity @p hotbar.2 minecraft:carrot_on_a_stick{controller:6,display:{Name:'{"text":"Kill all","italic":false,"color":"white"}'},HideFlags:63,Enchantments:[{id:"minecraft:sharpness",lvl:1s}]} 1
replaceitem entity @p hotbar.3 minecraft:carrot_on_a_stick{controller:8,display:{Name:'{"text":"Perspective","italic":false,"color":"white"}'},HideFlags:63,Enchantments:[{id:"minecraft:sharpness",lvl:1s}]} 1
replaceitem entity @p hotbar.4 minecraft:carrot_on_a_stick{controller:7,display:{Name:'{"text":"Render Mode","italic":false,"color":"white"}'},HideFlags:63,Enchantments:[{id:"minecraft:sharpness",lvl:1s}]} 1
replaceitem entity @p hotbar.5 minecraft:carrot_on_a_stick{controller:5,display:{Name:'{"text":"Reset object","italic":false,"color":"white"}'},HideFlags:63,Enchantments:[{id:"minecraft:sharpness",lvl:1s}]} 1
replaceitem entity @p hotbar.6 minecraft:redstone_torch{controller:1,display:{Name:'{"text":"Move around to control","italic":false,"color":"white"}'},HideFlags:63,Enchantments:[{id:"minecraft:sharpness",lvl:1s}]} 1
replaceitem entity @p hotbar.7 minecraft:repeater{controller:2,display:{Name:'{"text":"Move around to control","italic":false,"color":"white"}'},HideFlags:63,Enchantments:[{id:"minecraft:sharpness",lvl:1s}]} 1
replaceitem entity @p hotbar.8 minecraft:comparator{controller:3,display:{Name:'{"text":"Move around to control","italic":false,"color":"white"}'},HideFlags:63,Enchantments:[{id:"minecraft:sharpness",lvl:1s}]} 1

kill @e[type=item]





execute as @a[nbt={SelectedItem:{tag:{controller:1}}}] at @s run function dimsim:control/controller1
execute as @a[nbt={SelectedItem:{tag:{controller:2}}}] at @s run function dimsim:control/controller2
execute as @a[nbt={SelectedItem:{tag:{controller:3}}}] at @s run function dimsim:control/controller3


execute as @a[nbt={SelectedItem:{tag:{controller:5}}}] at @s run title @s actionbar [{"text":"Right-click to reset the object","color":"blue","bold":"true"}]
execute as @a[nbt={SelectedItem:{tag:{controller:6}}}] at @s run title @s actionbar [{"text":"Right-click to remove all objects (needs reset)","color":"red","bold":"true"}]
execute if score render calculations matches 0 as @a[nbt={SelectedItem:{tag:{controller:7}}}] at @s run title @s actionbar [{"text":"Right-click to change render mode","color":"blue","bold":"true"},{"text":"          Little Blocks Mode","color":"yellow"}]
execute if score render calculations matches 1 as @a[nbt={SelectedItem:{tag:{controller:7}}}] at @s run title @s actionbar [{"text":"Right-click to change render mode","color":"blue","bold":"true"},{"text":"          Normal Blocks Mode","color":"yellow"}]
execute if score render calculations matches 2 as @a[nbt={SelectedItem:{tag:{controller:7}}}] at @s run title @s actionbar [{"text":"Right-click to change render mode","color":"blue","bold":"true"},{"text":"          Particle Mode","color":"yellow"}]


execute if score perspective calculations matches 0 as @a[nbt={SelectedItem:{tag:{controller:8}}}] at @s run title @s actionbar [{"text":"Right-click to change perspective","color":"blue","bold":"true"},{"text":"          Perspective","color":"yellow"}]
execute if score perspective calculations matches 1 as @a[nbt={SelectedItem:{tag:{controller:8}}}] at @s run title @s actionbar [{"text":"Right-click to change perspective","color":"blue","bold":"true"},{"text":"          Orthographic","color":"yellow"}]








execute as @a[scores={rightclick=1..},nbt={SelectedItem:{tag:{controller:5}}}] at @s run function dimsim:initial/scanobject
execute as @a[scores={rightclick=1..},nbt={SelectedItem:{tag:{controller:5}}}] at @s run kill @e[type=area_effect_cloud,tag=dot]
execute as @a[scores={rightclick=1..},nbt={SelectedItem:{tag:{controller:5}}}] at @s run execute as @e[type=area_effect_cloud,tag=point] run function dimsim:rotate/copypremade
scoreboard players set @a[scores={rightclick=1..},nbt={SelectedItem:{tag:{controller:5}}}] calculations 4
execute if entity @a[scores={rightclick=1..},nbt={SelectedItem:{tag:{controller:5}}}] run function dimsim:rotate/beginrotate




execute as @a[scores={rightclick=1..},nbt={SelectedItem:{tag:{controller:6}}}] at @s run kill @e[type=!player]
execute as @a[scores={rightclick=1..},nbt={SelectedItem:{tag:{controller:7}}}] at @s run scoreboard players add render calculations 1
scoreboard players set @a[scores={rightclick=1..},nbt={SelectedItem:{tag:{controller:7}}}] calculations 4
execute as @a[scores={rightclick=1..},nbt={SelectedItem:{tag:{controller:8}}}] at @s run scoreboard players add perspective calculations 1
scoreboard players set @a[scores={rightclick=1..},nbt={SelectedItem:{tag:{controller:8}}}] calculations 4


execute as @a[scores={rightclick=1..},nbt={SelectedItem:{tag:{controller:7}}}] at @s run fill -10 10 -10 10 30 10 air

execute if score render calculations >= 3 constant run scoreboard players set render calculations 0
execute if score perspective calculations >= 2 constant run scoreboard players set perspective calculations 0

scoreboard players set @a[scores={direction=1..}] calculations 3
scoreboard players set @a direction 0

scoreboard players set @a rightclick 0


execute as @a[tag=hascontrol] at @s run function dimsim:control/controllerstop


scoreboard players add roundupper calculations 1
execute if score roundupper calculations > 2 constant run scoreboard players set roundupper calculations 0






execute as @a[tag=!registered] run function dimsim:initialize
tag @a add registered