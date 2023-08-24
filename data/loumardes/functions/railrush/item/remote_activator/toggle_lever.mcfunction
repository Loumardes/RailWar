


execute if block ~ ~ ~ lever store result score Toggled Constant if block ~ ~ ~ minecraft:lever[powered=true]

execute if block ~ ~ ~ lever[face=ceiling,facing=east] if score Toggled Constant matches 0 run setblock ~ ~ ~ lever[face=ceiling,facing=east,powered=true]
execute if block ~ ~ ~ lever[face=ceiling,facing=north] if score Toggled Constant matches 0 run setblock ~ ~ ~ lever[face=ceiling,facing=north,powered=true]
execute if block ~ ~ ~ lever[face=ceiling,facing=south] if score Toggled Constant matches 0 run setblock ~ ~ ~ lever[face=ceiling,facing=south,powered=true]
execute if block ~ ~ ~ lever[face=ceiling,facing=west] if score Toggled Constant matches 0 run setblock ~ ~ ~ lever[face=ceiling,facing=west,powered=true]

execute if block ~ ~ ~ lever[face=ceiling,facing=east] if score Toggled Constant matches 1 run setblock ~ ~ ~ lever[face=ceiling,facing=east,powered=false]
execute if block ~ ~ ~ lever[face=ceiling,facing=north] if score Toggled Constant matches 1 run setblock ~ ~ ~ lever[face=ceiling,facing=north,powered=false]
execute if block ~ ~ ~ lever[face=ceiling,facing=south] if score Toggled Constant matches 1 run setblock ~ ~ ~ lever[face=ceiling,facing=south,powered=false]
execute if block ~ ~ ~ lever[face=ceiling,facing=west] if score Toggled Constant matches 1 run setblock ~ ~ ~ lever[face=ceiling,facing=west,powered=false]


execute if block ~ ~ ~ lever[face=wall,facing=east] if score Toggled Constant matches 0 run setblock ~ ~ ~ lever[face=wall,facing=east,powered=true]
execute if block ~ ~ ~ lever[face=wall,facing=north] if score Toggled Constant matches 0 run setblock ~ ~ ~ lever[face=wall,facing=north,powered=true]
execute if block ~ ~ ~ lever[face=wall,facing=south] if score Toggled Constant matches 0 run setblock ~ ~ ~ lever[face=wall,facing=south,powered=true]
execute if block ~ ~ ~ lever[face=wall,facing=west] if score Toggled Constant matches 0 run setblock ~ ~ ~ lever[face=wall,facing=west,powered=true]

execute if block ~ ~ ~ lever[face=wall,facing=east] if score Toggled Constant matches 1 run setblock ~ ~ ~ lever[face=wall,facing=east,powered=false]
execute if block ~ ~ ~ lever[face=wall,facing=north] if score Toggled Constant matches 1 run setblock ~ ~ ~ lever[face=wall,facing=north,powered=false]
execute if block ~ ~ ~ lever[face=wall,facing=south] if score Toggled Constant matches 1 run setblock ~ ~ ~ lever[face=wall,facing=south,powered=false]
execute if block ~ ~ ~ lever[face=wall,facing=west] if score Toggled Constant matches 1 run setblock ~ ~ ~ lever[face=wall,facing=west,powered=false]


execute if block ~ ~ ~ lever[face=floor,facing=east] if score Toggled Constant matches 0 run setblock ~ ~ ~ lever[face=floor,facing=east,powered=true]
execute if block ~ ~ ~ lever[face=floor,facing=north] if score Toggled Constant matches 0 run setblock ~ ~ ~ lever[face=floor,facing=north,powered=true]
execute if block ~ ~ ~ lever[face=floor,facing=south] if score Toggled Constant matches 0 run setblock ~ ~ ~ lever[face=floor,facing=south,powered=true]
execute if block ~ ~ ~ lever[face=floor,facing=west] if score Toggled Constant matches 0 run setblock ~ ~ ~ lever[face=floor,facing=west,powered=true]

execute if block ~ ~ ~ lever[face=floor,facing=east] if score Toggled Constant matches 1 run setblock ~ ~ ~ lever[face=floor,facing=east,powered=false]
execute if block ~ ~ ~ lever[face=floor,facing=north] if score Toggled Constant matches 1 run setblock ~ ~ ~ lever[face=floor,facing=north,powered=false]
execute if block ~ ~ ~ lever[face=floor,facing=south] if score Toggled Constant matches 1 run setblock ~ ~ ~ lever[face=floor,facing=south,powered=false]
execute if block ~ ~ ~ lever[face=floor,facing=west] if score Toggled Constant matches 1 run setblock ~ ~ ~ lever[face=floor,facing=west,powered=false]


particle flame ~ ~ ~ 1 1 1 0.1 20 force