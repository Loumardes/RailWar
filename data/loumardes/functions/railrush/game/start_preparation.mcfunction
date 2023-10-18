

execute if entity @a[team=blue] if entity @a[team=red] run scoreboard players set StartCountdown Constant 1
execute if entity @a[tag=debug] run scoreboard players set StartCountdown Constant 1

execute if score StartCountdown Constant matches 1 run tellraw @a ["",{"text":"[RW] ","color":"gold"},{"text":"Portal activated !","color":"gray"}]
execute if score StartCountdown Constant matches 1 run schedule function loumardes:railrush/game/start 5s replace
execute unless score StartCountdown Constant matches 1 run function loumardes:railrush/game/abort_start


execute if score StartCountdown Constant matches 1 run effect give @a nausea 10 1 true
execute if score StartCountdown Constant matches 1 run effect give @a slowness 10 8 true

