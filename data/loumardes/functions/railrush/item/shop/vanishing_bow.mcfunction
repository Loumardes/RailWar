
execute if entity @s[team=blue] unless score Blue gold matches 10.. run tellraw @s ["",{"text":"Not enough funds, ","color":"gray"},{"text":"10 gold","color":"gold"},{"text":" required!","color":"gray"}]
execute if entity @s[team=blue] if score Blue gold matches 10.. run give @s bow{Unbreakable:1,Enchantments:[{id:vanishing_curse,lvl:1},{id:infinity,lvl:1}]} 1
execute if entity @s[team=blue] if score Blue gold matches 10.. run give @s arrow{Enchantments:[{id:vanishing_curse,lvl:1}]} 1
execute if entity @s[team=blue] if score Blue gold matches 10.. run scoreboard players remove Blue gold 10

execute if entity @s[team=red] unless score Red gold matches 10.. run tellraw @s ["",{"text":"Not enough funds, ","color":"gray"},{"text":"10 gold","color":"gold"},{"text":" required!","color":"gray"}]
execute if entity @s[team=red] if score Red gold matches 10.. run give @s bow{Unbreakable:1,Enchantments:[{id:vanishing_curse,lvl:1},{id:infinity,lvl:1}]} 1
execute if entity @s[team=red] if score Red gold matches 10.. run give @s arrow{Enchantments:[{id:vanishing_curse,lvl:1}]}
execute if entity @s[team=red] if score Red gold matches 10.. run scoreboard players remove Red gold 10
