execute if score setup setup matches 1 run function coc:opening
execute if score setup setup matches 2 run function coc:closing
effect give @a resistance 1000000 255 true
effect give @a weakness 1000000 255 true
effect give @a saturation 1000000 255 true
scoreboard players enable @a[team=0config] reset
scoreboard players enable @a[team=1staff] thanks
execute as @a[team=0config] if score @s reset matches 1 run function coc:reset
execute as @a[team=1staff] if score @s thanks matches 1 run function coc:thanks/0

execute as @a[team=0config] if score @s reset matches 1 run scoreboard players set @s reset 0
execute as @a[team=1staff] if score @s thanks matches 1 run scoreboard players set @s thanks 0

 execute as @e[type=item] run data modify entity @s Owner set from entity @s Thrower
execute as @e[type=item] run data merge entity @s {PickupDelay:0}

execute as @a unless data entity @s Inventory[{id:"minecraft:carved_pumpkin",tag:{CustomModelData:5}}] run give @s carved_pumpkin{display:{Name:'{"text":"Masque chirugical","color":"aqua"}',Lore:['{"text":"Pour vous protéger contre le COVID-19avJC"}']},HideFlags:127,CustomModelData:5}
execute as @a unless data entity @s Inventory[{id:"minecraft:carved_pumpkin",tag:{CustomModelData:1}}] run give @s carved_pumpkin{display:{Name:'{"text":"Masque antique","color":"#AF8954","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"De quoi sortir masqué !","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:127,CustomModelData:1}
execute as @a[tag=winner] unless data entity @s Inventory[{id:"minecraft:carved_pumpkin",tag:{CustomModelData:2}}] run give @s carved_pumpkin{display:{Name:'{"text":"Couronne de laurier","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Votre renommée mérite bien une couronne !","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:127,CustomModelData:2}
execute as @a[tag=pvp_winner] unless data entity @s Inventory[{id:"minecraft:carved_pumpkin",tag:{CustomModelData:3}}] run give @s carved_pumpkin{display:{Name:'{"text":"Casque spartiate","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Vous êtes l\'élite de l\'armée","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:127,CustomModelData:3}
execute as @a[team=donator1] unless data entity @s Inventory[{id:"minecraft:carved_pumpkin",tag:{CustomModelData:4}}] run give @s carved_pumpkin{display:{Name:'{"text":"Amulette egyptienne","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"La légende raconte qu\'un mistérieux pouvoir est enfermé à l\'intérieur","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:127,CustomModelData:4}

execute as @a unless data entity @s Inventory[{id:"minecraft:carved_pumpkin",tag:{CustomModelData:5},Count:1b}] run clear @s carved_pumpkin{display:{Name:'{"text":"Masque chirugical","color":"aqua"}',Lore:['{"text":"Pour vous protéger contre le COVID-19avJC"}']},HideFlags:127,CustomModelData:5}
execute as @a unless data entity @s Inventory[{id:"minecraft:carved_pumpkin",tag:{CustomModelData:1},Count:1b}] run clear @s carved_pumpkin{display:{Name:'{"text":"Masque antique","color":"#AF8954","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"De quoi sortir masqué !","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:127,CustomModelData:1}
execute as @a unless data entity @s Inventory[{id:"minecraft:carved_pumpkin",tag:{CustomModelData:2},Count:1b}] run clear @s carved_pumpkin{display:{Name:'{"text":"Couronne de laurier","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Votre renommée mérite bien une couronne !","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:127,CustomModelData:2}
execute as @a unless data entity @s Inventory[{id:"minecraft:carved_pumpkin",tag:{CustomModelData:4},Count:1b}] run clear @s carved_pumpkin{display:{Name:'{"text":"Amulette egyptienne","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"La légende raconte qu\'un mistérieux pouvoir est enfermé à l\'intérieur","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:127,CustomModelData:4}
execute as @a unless data entity @s Inventory[{id:"minecraft:carved_pumpkin",tag:{CustomModelData:3},Count:1b}] run clear @s carved_pumpkin{display:{Name:'{"text":"Casque spartiate","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Vous êtes l\'élite de l\'armée","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:127,CustomModelData:3}

execute at @e[type=area_effect_cloud,tag=fontaine] as @a[distance=..3] run tp 5 85 127

execute at @e[type=area_effect_cloud,tag=exit1] as @a[distance=..3] run tp 140 79 115

execute at @e[type=area_effect_cloud,tag=exit2] as @a[distance=..3] run tp -240 95 57