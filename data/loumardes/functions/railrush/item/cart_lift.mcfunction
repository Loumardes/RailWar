execute if block ~ ~ ~ vine store result entity @s Motion[1] double 0.001 run scoreboard players get LiftStrenght Constant

execute if block ~ ~ ~ vine[north=true] store result entity @s Motion[2] double -0.001 run scoreboard players get LiftStrenght Constant
execute if block ~ ~ ~ vine[south=true] store result entity @s Motion[2] double 0.001 run scoreboard players get LiftStrenght Constant
execute if block ~ ~ ~ vine[north=true,south=true] store result entity @s Motion[2] double 1 run scoreboard players get 0 Constant

execute if block ~ ~ ~ vine[east=true] store result entity @s Motion[0] double 0.001 run scoreboard players get LiftStrenght Constant
execute if block ~ ~ ~ vine[west=true] store result entity @s Motion[0] double -0.001 run scoreboard players get LiftStrenght Constant
execute if block ~ ~ ~ vine[east=true,west=true] store result entity @s Motion[0] double 1 run scoreboard players get 0 Constant

execute if block ~ ~ ~ vine run data merge entity @s {FallDistance:0f}
