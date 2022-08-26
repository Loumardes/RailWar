
execute if entity @s[team=blue] unless score Blue gold matches 5.. run tellraw @s ["",{"text":"Not enough funds, ","color":"gray"},{"text":"5 gold","color":"gold"},{"text":" required!","color":"gray"}]
execute if entity @s[team=blue] if score Blue gold matches 5.. run give @s emerald_block 1
execute if entity @s[team=blue] if score Blue gold matches 5.. run scoreboard players remove Blue gold 5

execute if entity @s[team=red] unless score Red gold matches 5.. run tellraw @s ["",{"text":"Not enough funds, ","color":"gray"},{"text":"5 gold","color":"gold"},{"text":" required!","color":"gray"}]
execute if entity @s[team=red] if score Red gold matches 5.. run give @s emerald_block 1
execute if entity @s[team=red] if score Red gold matches 5.. run scoreboard players remove Red gold 5
