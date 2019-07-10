

tag @e[type=item,nbt={Item:{id:"minecraft:oak_log"}}] add isLog
tag @e[type=item,nbt={Item:{id:"minecraft:birch_log"}}] add isLog
tag @e[type=item,nbt={Item:{id:"minecraft:spruce_log"}}] add isLog
tag @e[type=item,nbt={Item:{id:"minecraft:jungle_log"}}] add isLog
tag @e[type=item,nbt={Item:{id:"minecraft:acacia_log"}}] add isLog
tag @e[type=item,nbt={Item:{id:"minecraft:dark_oak_log"}}] add isLog

execute as @e[tag=isLog] at @s store result score @s tc_age run data get entity @s Age

scoreboard players enable @a tc_toggle

title @a[scores={tc_toggle=1}] actionbar ["",{"text":"Enabled","color":"green"}]
execute as @a[scores={tc_toggle=1}] at @s run scoreboard players set @s tc_toggle 2

execute as @a[scores={tc_toggle=2}] at @s run function tc:fell

title @a[scores={tc_toggle=3}] actionbar ["",{"text":"Disabled","color":"red"}]
execute as @a[scores={tc_toggle=3}] at @s run scoreboard players set @s tc_toggle 0
