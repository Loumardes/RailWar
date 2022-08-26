
execute if entity @s[team=blue] unless score Blue gold matches 3.. run tellraw @s ["",{"text":"Not enough funds, ","color":"gray"},{"text":"3 gold","color":"gold"},{"text":" required!","color":"gray"}]
execute if entity @s[team=blue] if score Blue gold matches 3.. run give @s scaffolding 32
execute if entity @s[team=blue] if score Blue gold matches 3.. run scoreboard players remove Blue gold 3

execute if entity @s[team=red] unless score Red gold matches 3.. run tellraw @s ["",{"text":"Not enough funds, ","color":"gray"},{"text":"3 gold","color":"gold"},{"text":" required!","color":"gray"}]
execute if entity @s[team=red] if score Red gold matches 3.. run give @s scaffolding 32
execute if entity @s[team=red] if score Red gold matches 3.. run scoreboard players remove Red gold 3
