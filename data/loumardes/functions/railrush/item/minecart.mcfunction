#grants a minecart after each death if the player used it
execute unless data entity @s Inventory[{id:"minecraft:minecart"}] run give @s minecart
scoreboard players reset @s Killed
