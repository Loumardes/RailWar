clear @s wooden_sword
clear @s stone_sword
clear @s iron_sword
clear @s diamond_sword
clear @s netherite_sword



item replace entity @s armor.head with leather_helmet{Unbreakable:1,display:{color:10263708}} 1 
item replace entity @s armor.feet with leather_boots{Unbreakable:1,display:{color:10263708}} 1 


#tier0
execute if score Red tech matches 0..4 run item replace entity @s armor.chest with leather_chestplate{Unbreakable:1,display:{color:10263708}} 1 
execute if score Red tech matches 0..4 run item replace entity @s armor.legs with leather_leggings{Unbreakable:1,display:{color:10263708}} 1 
execute if score Red tech matches 0..4 run give @s wooden_sword{Unbreakable:1} 1

#tier1
execute if score Red tech matches 5..9 run item replace entity @s armor.chest with chainmail_chestplate{Unbreakable:1} 1 
execute if score Red tech matches 5..9 run item replace entity @s armor.legs with chainmail_leggings{Unbreakable:1} 1 
execute if score Red tech matches 5..9 run item modify entity @s armor.head loumardes:protection1
execute if score Red tech matches 5..9 run item modify entity @s armor.feet loumardes:protection1
execute if score Red tech matches 5..9 run give @s stone_sword{Unbreakable:1} 1

#tier2
execute if score Red tech matches 10..14 run item replace entity @s armor.chest with iron_chestplate{Unbreakable:1} 1 
execute if score Red tech matches 10..14 run item replace entity @s armor.legs with iron_leggings{Unbreakable:1} 1 
execute if score Red tech matches 10..14 run item modify entity @s armor.head loumardes:protection2
execute if score Red tech matches 10..14 run item modify entity @s armor.feet loumardes:protection2
execute if score Red tech matches 10..14 run give @s iron_sword{Unbreakable:1} 1

#tier3
execute if score Red tech matches 15..19 run item replace entity @s armor.chest with diamond_chestplate{Unbreakable:1} 1 
execute if score Red tech matches 15..19 run item replace entity @s armor.legs with diamond_leggings{Unbreakable:1} 1 
execute if score Red tech matches 15..19 run item modify entity @s armor.head loumardes:protection3
execute if score Red tech matches 15..19 run item modify entity @s armor.feet loumardes:protection3
execute if score Red tech matches 15..19 run give @s diamond_sword{Unbreakable:1} 1

#tier4
execute if score Red tech matches 20.. run item replace entity @s armor.chest with netherite_chestplate{Unbreakable:1} 1 
execute if score Red tech matches 20.. run item replace entity @s armor.legs with netherite_leggings{Unbreakable:1} 1 
execute if score Red tech matches 20.. run item modify entity @s armor.head loumardes:protection4
execute if score Red tech matches 20.. run item modify entity @s armor.feet loumardes:protection4
execute if score Red tech matches 20.. run give @s netherite_sword{Unbreakable:1} 1

#enchants 
#theses enchants levels loops every 5 tech
scoreboard players operation Red Process = Red tech
scoreboard players operation Red Process %= 5 Constant

execute if score Red Process matches 1 run item modify entity @s armor.chest loumardes:protection1
execute if score Red Process matches 1 run item modify entity @s armor.legs loumardes:protection1

execute if score Red Process matches 2 run item modify entity @s armor.chest loumardes:protection2
execute if score Red Process matches 2 run item modify entity @s armor.legs loumardes:protection2

execute if score Red Process matches 3 run item modify entity @s armor.chest loumardes:protection3
execute if score Red Process matches 3 run item modify entity @s armor.legs loumardes:protection3

execute if score Red Process matches 4 run item modify entity @s armor.chest loumardes:protection4
execute if score Red Process matches 4 run item modify entity @s armor.legs loumardes:protection4
