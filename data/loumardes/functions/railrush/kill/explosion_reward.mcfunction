
execute store result score blown_up_player_count Process if entity @a[tag=killed_by_tnt_cart,team=red]
scoreboard players operation blown_up_player_count Process *= ExplosionKillReward Constant 
scoreboard players operation Blue gold = blown_up_player_count Process
tellraw @a ["",{"selector":"@a[tag=killed_by_tnt_cart,team=red]"},{"text":" has been blown up by a tnt cart,\ngranding ","color":"gray"},{"score":{"name":"blown_up_player_count","objective":"Process"},"color":"gold"},{"text":" gold","color":"gold"},{"text":" to the ","color":"gray"},{"text":"Blue team","color":"blue"}]

execute store result score blown_up_player_count Process if entity @a[tag=killed_by_tnt_cart,team=blue]
scoreboard players operation blown_up_player_count Process *= ExplosionKillReward Constant 
scoreboard players operation Red gold = blown_up_player_count Process
tellraw @a ["",{"selector":"@a[tag=killed_by_tnt_cart,team=blue]"},{"text":" has been blown up by a tnt cart,\ngranding ","color":"gray"},{"score":{"name":"blown_up_player_count","objective":"Process"},"color":"gold"},{"text":" gold","color":"gold"},{"text":" to the ","color":"gray"},{"text":"Red team","color":"red"}]

tag @a remove killed_by_tnt_cart
