
execute unless entity @a[team=blue] run tellraw @a ["",{"text":"/!\\ ","color":"gold"},{"text":"Blue ","color":"blue"},{"text":"team empty ","color":"gray"},{"text":"/!\\","color":"gold"}]
execute unless entity @a[team=red] run tellraw @a ["",{"text":"/!\\ ","color":"gold"},{"text":"Red ","color":"red"},{"text":"team empty  ","color":"gray"},{"text":"/!\\","color":"gold"}]
tellraw @a {"text":"     Aborting start","color":"gray"}

function loumardes:railrush/reset/area
