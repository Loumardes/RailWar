
execute if entity @s[team=blue] unless score Blue gold matches 1.. run tellraw @s ["",{"text":"Not enough funds, ","color":"gray"},{"text":"1 gold","color":"gold"},{"text":" required!","color":"gray"}]
execute if entity @s[team=blue] if score Blue gold matches 1.. run give @s vine{display:{Name:'[{"text":"Elevator","italic":false}]',Lore:['[{"text":"Works on Minecarts and players alike"}]']}} 16
execute if entity @s[team=blue] if score Blue gold matches 1.. run scoreboard players remove Blue gold 1

execute if entity @s[team=red] unless score Red gold matches 1.. run tellraw @s ["",{"text":"Not enough funds, ","color":"gray"},{"text":"1 gold","color":"gold"},{"text":" required!","color":"gray"}]
execute if entity @s[team=red] if score Red gold matches 1.. run give @s vine{display:{Name:'[{"text":"Elevator","italic":false}]',Lore:['[{"text":"Works on Minecarts and players alike"}]']}} 16
execute if entity @s[team=red] if score Red gold matches 1.. run scoreboard players remove Red gold 1
