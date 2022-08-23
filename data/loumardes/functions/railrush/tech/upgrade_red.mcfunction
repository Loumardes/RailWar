#increasee tech level if not to the maximum
execute if score Red tech matches 0..23 run scoreboard players add Red tech 1
scoreboard players set Red iron 0

#grants gold after reaching the maximum
execute if score Red tech matches 24 run scoreboard players add Red gold 3

execute if score Red tech matches 5..9 run scoreboard players set Red tech_requirement 2
execute if score Red tech matches 10..14 run scoreboard players set Red tech_requirement 4
execute if score Red tech matches 15..19 run scoreboard players set Red tech_requirement 8
execute if score Red tech matches 20.. run scoreboard players set Red tech_requirement 16
execute if score Red tech matches 24.. run scoreboard players set Red tech_requirement 1

execute as @a[team=red] run function loumardes:railrush/item/red_gear
