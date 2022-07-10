scoreboard players set GameRunning Constant 1

scoreboard players set Blue gold 0
scoreboard players set Red gold 0
team join blue Blue
team join blue Red

tp @a[team=blue] 5000 1 70 180 ~
spawnpoint @a[team=blue] 5000 1 70 180

tp @a[team=red] 5000 1 -70 0 ~
spawnpoint @a[team=red] 5000 1 -70 0

gamemode survival @a

 