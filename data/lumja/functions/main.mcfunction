
execute as @a[scores={lumja_cooldown=1..}] at @s run scoreboard players remove @s lumja_cooldown 1

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

tag @a[nbt={SelectedItem:{id:"minecraft:wooden_axe"}}] add hasAxe
tag @a[nbt={SelectedItem:{id:"minecraft:stone_axe"}}] add hasAxe
tag @a[nbt={SelectedItem:{id:"minecraft:iron_axe"}}] add hasAxe
tag @a[nbt={SelectedItem:{id:"minecraft:golden_axe"}}] add hasAxe
tag @a[nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] add hasAxe


scoreboard players enable @a lumja_toggle




execute as @a[tag=hasAxe,x_rotation=80..90,scores={lumja_sneak=1..,lumja_toggle=2,lumja_cooldown=0}] at @s run trigger lumja_toggle set 3
execute as @a[tag=hasAxe,x_rotation=80..90,scores={lumja_sneak=1..,lumja_toggle=0,lumja_cooldown=0}] at @s run trigger lumja_toggle set 1

execute as @a[tag=hasAxe,x_rotation=80..90,scores={lumja_sneak=1..}] at @s run scoreboard players set @s lumja_cooldown 2


title @a[scores={lumja_toggle=1}] actionbar ["",{"text":"Enabled","color":"green"}]
execute as @a[scores={lumja_toggle=1}] at @s run scoreboard players set @s lumja_toggle 2

execute as @a[scores={lumja_toggle=2}] at @s run function lumja:fell

title @a[scores={lumja_toggle=3}] actionbar ["",{"text":"Disabled","color":"red"}]
execute as @a[scores={lumja_toggle=3}] at @s run scoreboard players set @s lumja_toggle 0




scoreboard players reset @a[scores={lumja_sneak=1..}] lumja_sneak

tag @a[tag=hasAxe] remove hasAxe
