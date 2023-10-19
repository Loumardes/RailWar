
execute if entity @s[team=blue] unless score Blue gold matches 10.. run tellraw @s ["",{"text":"Not enough funds, ","color":"gray"},{"text":"10 gold","color":"gold"},{"text":" required!","color":"gray"}]
execute if entity @s[team=blue] if score Blue gold matches 10.. run effect give @a[team=blue] speed 60
execute if entity @s[team=blue] if score Blue gold matches 10.. run effect give @a[team=blue] strength 60
execute if entity @s[team=blue] if score Blue gold matches 10.. run scoreboard players remove Blue gold 10

execute if entity @s[team=red] unless score Red gold matches 10.. run tellraw @s ["",{"text":"Not enough funds, ","color":"gray"},{"text":"10 gold","color":"gold"},{"text":" required!","color":"gray"}]
execute if entity @s[team=red] if score Red gold matches 10.. run effect give @a[team=red] speed 60
execute if entity @s[team=red] if score Red gold matches 10.. run effect give @a[team=red] strength 60
execute if entity @s[team=red] if score Red gold matches 10.. run scoreboard players remove Red gold 10

execute if entity @s[team=spectator] unless score Spectators gold matches 10.. run tellraw @s ["",{"text":"Not enough funds, ","color":"gray"},{"text":"10 gold","color":"gold"},{"text":" required!","color":"gray"}]
execute if entity @s[team=spectator] if score Spectators gold matches 10.. run effect give @a[team=spectator] speed 60
execute if entity @s[team=spectator] if score Spectators gold matches 10.. run effect give @a[team=spectator] strength 60
execute if entity @s[team=spectator] if score Spectators gold matches 10.. run scoreboard players remove Spectators gold 10
