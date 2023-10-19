
execute if entity @s[team=blue] unless score Blue gold matches 5.. run tellraw @s ["",{"text":"Not enough funds, ","color":"gray"},{"text":"5 gold","color":"gold"},{"text":" required!","color":"gray"}]
execute if entity @s[team=blue] if score Blue gold matches 5.. run give @s minecraft:splash_potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:7,Amplifier:2}],display:{Name:"\"Grenade\"",Lore:['[{"text":"Can one shot Players","italic":true}]']}} 1
execute if entity @s[team=blue] if score Blue gold matches 5.. run scoreboard players remove Blue gold 5

execute if entity @s[team=red] unless score Red gold matches 5.. run tellraw @s ["",{"text":"Not enough funds, ","color":"gray"},{"text":"5 gold","color":"gold"},{"text":" required!","color":"gray"}]
execute if entity @s[team=red] if score Red gold matches 5.. run give @s minecraft:splash_potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:7,Amplifier:2}],display:{Name:"\"Grenade\"",Lore:['[{"text":"Can one shot Players","italic":true}]']}} 1
execute if entity @s[team=red] if score Red gold matches 5.. run scoreboard players remove Red gold 5

execute if entity @s[team=spectator] unless score Spectators gold matches 5.. run tellraw @s ["",{"text":"Not enough funds, ","color":"gray"},{"text":"5 gold","color":"gold"},{"text":" required!","color":"gray"}]
execute if entity @s[team=spectator] if score Spectators gold matches 5.. run give @s minecraft:splash_potion{Potion:"minecraft:water",CustomPotionEffects:[{Id:7,Amplifier:2}],display:{Name:"\"Grenade\"",Lore:['[{"text":"Can one shot Players","italic":true}]']}} 1
execute if entity @s[team=spectator] if score Spectators gold matches 5.. run scoreboard players remove Spectators gold 5
