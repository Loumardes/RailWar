#Gives all items required for the game and clear the others

clear @s

give @s wooden_sword{Unbreakable:1} 1

give @s[team=red] red_wool 1
give @s[team=blue] blue_wool 1

give @s rail 1
give @s minecart 1


give @s iron_pickaxe{Unbreakable:1} 1

give @s carrot_on_a_stick 1

give @s activator_rail 1
give @s detector_rail 1
give @s lever 1

execute if entity @s[team=blue] run function loumardes:railrush/item/blue_gear
execute if entity @s[team=red] run function loumardes:railrush/item/red_gear

