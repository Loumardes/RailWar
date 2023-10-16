#increasee tech level if not to the maximum
execute if score Spectators tech matches 0..23 run scoreboard players add Spectators tech 1
scoreboard players set Spectators iron 0

#grants gold after reaching the maximum
execute if score Spectators tech matches 24 run scoreboard players add Spectators gold 3

execute if score Spectators tech matches 5..9 run scoreboard players set Spectators tech_requirement 2
execute if score Spectators tech matches 10..14 run scoreboard players set Spectators tech_requirement 4
execute if score Spectators tech matches 15..19 run scoreboard players set Spectators tech_requirement 8
execute if score Spectators tech matches 20.. run scoreboard players set Spectators tech_requirement 16
execute if score Spectators tech matches 24.. run scoreboard players set Spectators tech_requirement 1

execute as @a[team=red] run function loumardes:railrush/item/spectators_gear
