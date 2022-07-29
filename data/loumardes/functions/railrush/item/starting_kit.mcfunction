#Gives all items required for the game and clear the others

clear @s

give @s wooden_sword{Unbreakable:1} 1

give @s[team=red] red_wool 1
give @s[team=blue] blue_wool 1

give @s powered_rail 1
give @s rail 1
give @s activator_rail 1
give @s detector_rail 1

give @s lever 1

give @s iron_pickaxe{Unbreakable:1} 1

item replace entity @s[team=red] armor.head with leather_helmet{Unbreakable:1,display:{color:13697026}} 1 
item replace entity @s[team=red] armor.chest with leather_chestplate{Unbreakable:1,display:{color:13697026}} 1 
item replace entity @s[team=red] armor.legs with leather_leggings{Unbreakable:1,display:{color:13697026}} 1 
item replace entity @s[team=red] armor.feet with leather_boots{Unbreakable:1,display:{color:13697026}} 1 

item replace entity @s[team=blue] armor.head with leather_helmet{Unbreakable:1,display:{color:7121}} 1 
item replace entity @s[team=blue] armor.chest with leather_chestplate{Unbreakable:1,display:{color:7121}} 1 
item replace entity @s[team=blue] armor.legs with leather_leggings{Unbreakable:1,display:{color:7121}} 1 
item replace entity @s[team=blue] armor.feet with leather_boots{Unbreakable:1,display:{color:7121}} 1 

