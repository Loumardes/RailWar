scoreboard players add Blue tech 1
scoreboard players set Blue iron 0

execute if score Blue tech matches 2 run item replace entity @a[team=blue] armor.chest with chainmail_chestplate{Unbreakable:1} 1 
execute if score Blue tech matches 2 run item replace entity @a[team=blue] armor.legs with chainmail_leggings{Unbreakable:1} 1 
execute if score Blue tech matches 2 run clear @a[team=blue] wooden_sword
execute if score Blue tech matches 2 run give @a[team=blue] stone_sword{Unbreakable:1} 1

execute if score Blue tech matches 3 run item replace entity @a[team=blue] armor.chest with iron_chestplate{Unbreakable:1} 1 
execute if score Blue tech matches 3 run item replace entity @a[team=blue] armor.legs with iron_leggings{Unbreakable:1} 1 
execute if score Blue tech matches 3 run clear @a[team=blue] stone_sword
execute if score Blue tech matches 3 run give @a[team=blue] iron_sword{Unbreakable:1} 1

execute if score Blue tech matches 4 run item replace entity @a[team=blue] armor.chest with diamond_chestplate{Unbreakable:1} 1 
execute if score Blue tech matches 4 run item replace entity @a[team=blue] armor.legs with diamond_leggings{Unbreakable:1} 1 
execute if score Blue tech matches 4 run clear @a[team=blue] iron_sword
execute if score Blue tech matches 4 run give @a[team=blue] diamond_sword{Unbreakable:1} 1

execute if score Blue tech matches 5 run item replace entity @a[team=blue] armor.chest with netherite_chestplate{Unbreakable:1} 1 
execute if score Blue tech matches 5 run item replace entity @a[team=blue] armor.legs with netherite_leggings{Unbreakable:1} 1 
execute if score Blue tech matches 5 run clear @a[team=blue] diamond_sword
execute if score Blue tech matches 5 run give @a[team=blue] netherite_sword{Unbreakable:1} 1
