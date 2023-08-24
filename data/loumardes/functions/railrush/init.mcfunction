
scoreboard objectives add Constant dummy
scoreboard objectives add Variable dummy
scoreboard objectives add Process dummy

scoreboard objectives add TNTFuse dummy
scoreboard objectives add FallDistance dummy

scoreboard objectives add MotionX dummy
scoreboard objectives add MotionZ dummy

scoreboard objectives add StoredMotionX dummy
scoreboard objectives add StoredMotionZ dummy

scoreboard objectives add VectorX dummy
scoreboard objectives add VectorY dummy
scoreboard objectives add VectorZ dummy

scoreboard objectives add Var1 dummy
scoreboard objectives add Var2 dummy
scoreboard objectives add Var3 dummy

scoreboard objectives add Click used:carrot_on_a_stick
scoreboard objectives add Killed deathCount
scoreboard objectives add KilledByTNTCart killed_by:tnt_minecart

scoreboard objectives add gold dummy ["",{"text":"Gold ","color":"gold"}]
scoreboard objectives add iron dummy
scoreboard objectives add tech dummy
scoreboard objectives add tech_requirement dummy

scoreboard objectives add RW_spawner_id dummy

scoreboard objectives add startGame trigger

scoreboard players set 120 Constant 120
scoreboard players set 100 Constant 100
scoreboard players set 5 Constant 5
scoreboard players set 0 Constant 0
scoreboard players set -1 Constant -1
scoreboard players set LiftStrenght Constant 250
scoreboard players set VectorGravity Constant 49
scoreboard players set ExplosionKillReward Constant 5

gamerule randomTickSpeed 0

team add red
team add blue
