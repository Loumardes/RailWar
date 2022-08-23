#increasee tech level if not to the maximum
execute if score Blue tech matches 0..23 run scoreboard players add Blue tech 1
scoreboard players set Blue iron 0

#grants gold after reaching the maximum
execute if score Blue tech matches 24 run scoreboard players add Blue gold 3

execute if score Blue tech matches 5..9 run scoreboard players set Blue tech_requirement 2
execute if score Blue tech matches 10..14 run scoreboard players set Blue tech_requirement 4
execute if score Blue tech matches 15..19 run scoreboard players set Blue tech_requirement 8
execute if score Blue tech matches 20..23 run scoreboard players set Blue tech_requirement 16
execute if score Blue tech matches 24.. run scoreboard players set Blue tech_requirement 1

execute as @a[team=blue] run function loumardes:railrush/item/blue_gear
