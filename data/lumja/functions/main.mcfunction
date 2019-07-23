

tag @e[type=item,nbt={Item:{id:"minecraft:oak_log"}}] add isOak
tag @e[type=item,nbt={Item:{id:"minecraft:oak_wood"}}] add isOak
tag @e[type=item,nbt={Item:{id:"minecraft:birch_log"}}] add isBirch
tag @e[type=item,nbt={Item:{id:"minecraft:birch_wood"}}] add isBirch
tag @e[type=item,nbt={Item:{id:"minecraft:spruce_log"}}] add isSpruce
tag @e[type=item,nbt={Item:{id:"minecraft:spruce_wood"}}] add isSpruce
tag @e[type=item,nbt={Item:{id:"minecraft:jungle_log"}}] add isJungle
tag @e[type=item,nbt={Item:{id:"minecraft:jungle_wood"}}] add isJungle
tag @e[type=item,nbt={Item:{id:"minecraft:acacia_log"}}] add isAcacia
tag @e[type=item,nbt={Item:{id:"minecraft:acacia_wood"}}] add isAcacia
tag @e[type=item,nbt={Item:{id:"minecraft:dark_oak_log"}}] add isDarkOak
tag @e[type=item,nbt={Item:{id:"minecraft:dark_oak_wood"}}] add isDarkOak

scoreboard players enable @a lumja_toggle

title @a[scores={lumja_toggle=1}] actionbar ["",{"text":"Enabled","color":"green"}]
execute as @a[scores={lumja_toggle=1}] at @s run scoreboard players set @s lumja_toggle 2

execute as @a[scores={lumja_toggle=2}] at @s run function lumja:fell

title @a[scores={lumja_toggle=3}] actionbar ["",{"text":"Disabled","color":"red"}]
execute as @a[scores={lumja_toggle=3}] at @s run scoreboard players set @s lumja_toggle 0
