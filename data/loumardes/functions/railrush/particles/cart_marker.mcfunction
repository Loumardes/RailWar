
summon marker ~ ~ ~ {Tags:["CartParticles","NewCartParticles"]}

execute if score @s TNTFuse matches -2147483648..2147483647 run tag @e[type=marker,tag=NewCartParticles,limit=1] add primed

execute if entity @s[tag=blue] run tag @e[type=marker,tag=NewCartParticles,limit=1] add blue
execute if entity @s[tag=red] run tag @e[type=marker,tag=NewCartParticles,limit=1] add red

tag @e[type=marker,tag=NewCartParticles,limit=1] remove NewCartParticles
