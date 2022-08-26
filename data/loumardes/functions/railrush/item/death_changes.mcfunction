#grants a minecart after each death if the player used it
execute unless data entity @s Inventory[{id:"minecraft:minecart"}] run give @s minecart

#clear vanishing items (vanishing dont work with keepinventory)
clear @s bow{Enchantments:[{id:vanishing_curse,lvl:1}]}
clear @s arrow{Enchantments:[{id:vanishing_curse,lvl:1}]}

scoreboard players reset @s Killed
