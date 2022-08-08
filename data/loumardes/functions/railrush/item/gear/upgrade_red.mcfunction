scoreboard players add Red tech 1
scoreboard players set Red iron 0

execute if score Red tech matches 2 run item replace entity @a[team=red] armor.chest with chainmail_chestplate{Unbreakable:1} 1 
execute if score Red tech matches 2 run item replace entity @a[team=red] armor.legs with chainmail_leggings{Unbreakable:1} 1 
execute if score Red tech matches 2 run clear @a[team=red] wooden_sword
execute if score Red tech matches 2 run give @a[team=red] stone_sword{Unbreakable:1} 1

execute if score Red tech matches 3 run item replace entity @a[team=red] armor.chest with iron_chestplate{Unbreakable:1} 1 
execute if score Red tech matches 3 run item replace entity @a[team=red] armor.legs with iron_leggings{Unbreakable:1} 1 
execute if score Red tech matches 3 run clear @a[team=red] stone_sword
execute if score Red tech matches 3 run give @a[team=red] iron_sword{Unbreakable:1} 1

execute if score Red tech matches 4 run item replace entity @a[team=red] armor.chest with diamond_chestplate{Unbreakable:1} 1 
execute if score Red tech matches 4 run item replace entity @a[team=red] armor.legs with diamond_leggings{Unbreakable:1} 1 
execute if score Red tech matches 4 run clear @a[team=red] iron_sword
execute if score Red tech matches 4 run give @a[team=red] diamond_sword{Unbreakable:1} 1

execute if score Red tech matches 5 run item replace entity @a[team=red] armor.chest with netherite_chestplate{Unbreakable:1} 1 
execute if score Red tech matches 5 run item replace entity @a[team=red] armor.legs with netherite_leggings{Unbreakable:1} 1 
execute if score Red tech matches 5 run clear @a[team=red] diamond_sword
execute if score Red tech matches 5 run give @a[team=red] netherite_sword{Unbreakable:1} 1
