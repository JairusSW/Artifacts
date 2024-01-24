#-------------------Trident Code---------------------
execute as @a[nbt={Inventory:[{id:"minecraft:trident",tag:{Artifact:1}}]}] run scoreboard players set @s spearholder 20
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet",tag:{display:{Name:'[{"text":"Diomedes\' Crown","italic":false,"color":"red"}]'}}}]}] run scoreboard players set @s spearowner 20
execute as @e[type=trident,nbt={inGround:1b}] run scoreboard players set @a spear 20
execute as @a[scores={spearholder=20,spear=20,spearowner=20}] run effect give @s speed 10 1
execute as @a[scores={spearholder=20,spear=20,spearowner=20}] run effect give @s hunger 2 4
execute as @a[scores={spearholder=20,spear=20,spearowner=20}] run execute at @e[type=trident,nbt={inGround:1b}] run summon minecraft:lightning_bolt
execute as @a[scores={spearholder=20,spear=20,spearowner=20}] run execute at @e[type=trident,nbt={inGround:1b}] run tp @e[type=trident] ~ ~2 ~
execute as @a[scores={spearholder=20,spear=20,spearowner=20}] run scoreboard players add @s return 1
execute as @a[scores={return=5}] run function artifacts:diomedes_spear_reset
execute as @a[scores={returntosender=1}] run tp @e[type=trident] dragonskyflyer4
execute as @a[scores={returntosender=1}] run scoreboard players set @s returntosender 0
#-------------------Simple Items Code---------------------
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",tag:{display:{Name:'[{"text":"Offas Shield","italic":false,"color":"red"}]'}}}]}] run effect give @s minecraft:mining_fatigue 10 
execute as @a[nbt={SelectedItem:{id:"minecraft:echo_shard",tag:{display:{Name:'[{"text":"Ethereal Whisper","italic":false,"color":"red"}]'}}}}] run effect give @s minecraft:mining_fatigue 10
execute as @a[nbt={SelectedItem:{id:"minecraft:echo_shard",tag:{display:{Name:'[{"text":"Ethereal Whisper","italic":false,"color":"red"}]'}}}}] run effect give @s minecraft:slowness 10
execute as @a[nbt={SelectedItem:{id:"minecraft:golden_sword",tag:{display:{Name:'[{"text":"The Rouges Dagger","italic":false,"color":"red"}]'}}}}] run effect give @s minecraft:mining_fatigue 10
execute as @a[nbt={SelectedItem:{id:"minecraft:golden_sword",tag:{display:{Name:'[{"text":"The Rouges Dagger","italic":false,"color":"red"}]'}}}}] run effect give @s minecraft:bad_omen 10

#-------------------Radioactive Treasure Code---------------------
execute as @a[nbt={Inventory:[{id:"minecraft:slime_ball",tag:{display:{Name:'[{"text":"Radioactive Treasure","italic":false,"color":"red"}]'}}}]}] run effect give @s minecraft:saturation 10
execute as @a[nbt={Inventory:[{id:"minecraft:slime_ball",tag:{display:{Name:'[{"text":"Radioactive Treasure","italic":false,"color":"red"}]'}}}]}] run effect give @s minecraft:haste 10 1
execute as @a[nbt={Inventory:[{id:"minecraft:slime_ball",tag:{display:{Name:'[{"text":"Radioactive Treasure","italic":false,"color":"red"}]'}}}]}] run effect give @s minecraft:invisibility 10
execute as @a[nbt={Inventory:[{id:"minecraft:slime_ball",tag:{display:{Name:'[{"text":"Radioactive Treasure","italic":false,"color":"red"}]'}}}]}] run scoreboard players add @s radioactive 1
execute as @a[nbt={Inventory:[{id:"minecraft:slime_ball",tag:{display:{Name:'[{"text":"Radioactive Treasure","italic":false,"color":"red"}]'}}}]}] run scoreboard players set @s radioactiveInInvo 1
execute as @a[scores={radioactiveInInvo=1}] run attribute @s minecraft:generic.max_health base set 24
execute as @a[scores={radioactiveInInvo=1..10}] run scoreboard players add @s radioactiveInInvo 1 
execute as @a[scores={radioactiveInInvo=10}] run attribute @s minecraft:generic.max_health base set 20
execute as @a[scores={radioactiveInInvo=10}] run effect give @s minecraft:poison 2
execute as @a[scores={radioactiveInInvo=10}] run scoreboard players set @s radioactiveInInvo 0
execute as @a[scores={radioactive=12000}] run effect give @s minecraft:nausea 10
execute as @a[scores={radioactive=24000}] run effect give @s minecraft:nausea 10
execute as @a[scores={radioactive=24000}] run effect give @s minecraft:poison 10
execute as @a[scores={radioactive=24001}] run scoreboard players set @s radioactive 0

#-------------------Heart of Enderman Code---------------------
execute as @a[nbt={Inventory:[{id:"minecraft:ender_eye",tag:{display:{Name:'[{"text":"Heart of Enderman","italic":false,"color":"red"}]'}}}]}] run scoreboard players set @p endermanking 1
execute as @a[scores={pearl=1,endermanking=1}] run effect give @p resistance 8 20
execute as @a[scores={pearl=1..201}] run scoreboard players add @p pearl 1
execute as @a[scores={pearl=202}] run scoreboard players set @p pearl 0
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:ender_eye",tag:{display:{Name:'[{"text":"Heart of Enderman","italic":false,"color":"red"}]'}}}]}] run effect give @s minecraft:weakness 5
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:ender_eye",tag:{display:{Name:'[{"text":"Heart of Enderman","italic":false,"color":"red"}]'}}}]}] run effect give @s minecraft:speed 5 1

#-------------------Prayer to Athena Code---------------------
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet",tag:{display:{Name:'[{"text":"Diomedes\' Crown","italic":false,"color":"red"}]'}}}]}] run scoreboard players add @s crownowner 1
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:heart_of_the_sea",tag:{display:{Name:'[{"text":"Prayers to Athena","italic":false,"color":"red"}]'}}}]}] run scoreboard players add @s heartOwner 1
execute as @a[scores={crownowner=1,heartOwner=1}] run scoreboard players add @s prayersToAthena 1
execute as @a[scores={prayersToAthena=2}] run effect give @s minecraft:instant_health 3
execute as @a[scores={prayersToAthena=2}] run effect give @s minecraft:speed 20 1
execute as @a[scores={prayersToAthena=2}] run effect give @s minecraft:strength 20 3
execute as @a[scores={prayersToAthena=602}] run scoreboard players set @s prayersToAthena 0
execute as @a[scores={prayersToAthena=602}] run playsound minecraft:block.bell.resonate block @s
execute as @a[scores={crownowner=1}] run scoreboard players set @s crownowner 0
execute as @a[scores={heartOwner=1}] run scoreboard players set @s heartOwner 0

#-------------------Athena's Leap Code---------------------
execute as @a[nbt={Inventory:[{id:"minecraft:snowball",tag:{display:{Name:'[{"text":"Athena\'s Leap","italic":false,"color":"red"}]'}}}]}] run scoreboard players set @s leapOwner 1
execute as @a[scores={snowball=1,leapOwner=1}] run ride @s mount @e[type=minecraft:snowball,limit=1]
execute as @a[scores={snowball=1..20,leapOwner=1}] run scoreboard players add @s athenaLeap 1
execute as @a[scores={athenaLeap=203}] run playsound minecraft:block.bell.resonate block @s
execute as @a[scores={athenaLeap=203}] run scoreboard players set @s snowball 0
execute as @a[scores={athenaLeap=203}] run scoreboard players set @s athenaLeap 0

#-------------------Arkenstone code---------------------
execute as @a[nbt={Inventory:[{id:"minecraft:spyglass",tag:{display:{Name:'[{"text":"Arkenstone of Thorin","italic":false,"color":"red"}]'}}}]}] run effect give @s minecraft:hero_of_the_village 1 9
execute as @a[nbt={Inventory:[{id:"minecraft:spyglass",tag:{display:{Name:'[{"text":"Arkenstone of Thorin","italic":false,"color":"red"}]'}}}]}] run scoreboard players set @s ArkenstoneInInvo 1
execute as @a[scores={ArkenstoneInInvo=1}] run attribute @s minecraft:generic.max_health base set 28
execute as @a[scores={ArkenstoneInInvo=1}] run effect give @s minecraft:speed 1 2
execute as @a[scores={ArkenstoneInInvo=1..10}] run scoreboard players add @s ArkenstoneInInvo 1 
execute as @a[scores={ArkenstoneInInvo=10}] run attribute @s minecraft:generic.max_health base set 20
execute as @a[scores={ArkenstoneInInvo=10}] run effect give @s minecraft:poison 2
execute as @a[scores={ArkenstoneInInvo=10}] run scoreboard players set @s ArkenstoneInInvo 0
execute as @a[scores={Arkenstone=1..801}] run scoreboard players add @s Arkenstone 1
execute at @a[scores={Arkenstone=2}] run summon area_effect_cloud ~3 ~ ~3 {CustomName:"\"Elixir of Death\"",Radius:1.8f,Duration:80,RadiusOnUse:-0.01f,RadiusPerTick:-0.0002f,ReapplicationDelay:40,Effects:[{Id:15,Duration:200,Ambient:1b},{Id:33,Duration:200,Ambient:1b},{Id:17,Duration:100,Ambient:1b},{Id:7,Duration:20,Ambient:1b},{Id:2,Duration:600,Ambient:1b},{Id:4,Duration:800,Ambient:1b},{Id:9,Duration:100,Ambient:1b},{Id:19,Duration:200,Ambient:1b},{Id:18,Duration:300,Ambient:1b},{Id:20,Duration:200,Ambient:1b}]} 
execute at @a[scores={Arkenstone=2}] run summon area_effect_cloud ~-3 ~ ~3 {CustomName:"\"Elixir of Death\"",Radius:1.8f,Duration:80,RadiusOnUse:-0.01f,RadiusPerTick:-0.0002f,ReapplicationDelay:40,Effects:[{Id:15,Duration:200,Ambient:1b},{Id:33,Duration:200,Ambient:1b},{Id:17,Duration:100,Ambient:1b},{Id:7,Duration:20,Ambient:1b},{Id:2,Duration:600,Ambient:1b},{Id:4,Duration:800,Ambient:1b},{Id:9,Duration:100,Ambient:1b},{Id:19,Duration:200,Ambient:1b},{Id:18,Duration:300,Ambient:1b},{Id:20,Duration:200,Ambient:1b}]} 
execute at @a[scores={Arkenstone=2}] run summon area_effect_cloud ~3 ~ ~-3 {CustomName:"\"Elixir of Death\"",Radius:1.8f,Duration:80,RadiusOnUse:-0.01f,RadiusPerTick:-0.0002f,ReapplicationDelay:40,Effects:[{Id:15,Duration:200,Ambient:1b},{Id:33,Duration:200,Ambient:1b},{Id:17,Duration:100,Ambient:1b},{Id:7,Duration:20,Ambient:1b},{Id:2,Duration:600,Ambient:1b},{Id:4,Duration:800,Ambient:1b},{Id:9,Duration:100,Ambient:1b},{Id:19,Duration:200,Ambient:1b},{Id:18,Duration:300,Ambient:1b},{Id:20,Duration:200,Ambient:1b}]} 
execute at @a[scores={Arkenstone=2}] run summon area_effect_cloud ~-3 ~ ~-3 {CustomName:"\"Elixir of Death\"",Radius:1.8f,Duration:80,RadiusOnUse:-0.01f,RadiusPerTick:-0.0002f,ReapplicationDelay:40,Effects:[{Id:15,Duration:200,Ambient:1b},{Id:33,Duration:200,Ambient:1b},{Id:17,Duration:100,Ambient:1b},{Id:7,Duration:20,Ambient:1b},{Id:2,Duration:600,Ambient:1b},{Id:4,Duration:800,Ambient:1b},{Id:9,Duration:100,Ambient:1b},{Id:19,Duration:200,Ambient:1b},{Id:18,Duration:300,Ambient:1b},{Id:20,Duration:200,Ambient:1b}]} 
execute at @a[scores={Arkenstone=2}] run summon area_effect_cloud ~3 ~ ~1 {CustomName:"\"Elixir of Death\"",Radius:1.8f,Duration:80,RadiusOnUse:-0.01f,RadiusPerTick:-0.0002f,ReapplicationDelay:40,Effects:[{Id:15,Duration:200,Ambient:1b},{Id:33,Duration:200,Ambient:1b},{Id:17,Duration:100,Ambient:1b},{Id:7,Duration:20,Ambient:1b},{Id:2,Duration:600,Ambient:1b},{Id:4,Duration:800,Ambient:1b},{Id:9,Duration:100,Ambient:1b},{Id:19,Duration:200,Ambient:1b},{Id:18,Duration:300,Ambient:1b},{Id:20,Duration:200,Ambient:1b}]} 
execute at @a[scores={Arkenstone=2}] run summon area_effect_cloud ~-1 ~ ~3 {CustomName:"\"Elixir of Death\"",Radius:1.8f,Duration:80,RadiusOnUse:-0.01f,RadiusPerTick:-0.0002f,ReapplicationDelay:40,Effects:[{Id:15,Duration:200,Ambient:1b},{Id:33,Duration:200,Ambient:1b},{Id:17,Duration:100,Ambient:1b},{Id:7,Duration:20,Ambient:1b},{Id:2,Duration:600,Ambient:1b},{Id:4,Duration:800,Ambient:1b},{Id:9,Duration:100,Ambient:1b},{Id:19,Duration:200,Ambient:1b},{Id:18,Duration:300,Ambient:1b},{Id:20,Duration:200,Ambient:1b}]} 
execute at @a[scores={Arkenstone=2}] run summon area_effect_cloud ~1 ~ ~-3 {CustomName:"\"Elixir of Death\"",Radius:1.8f,Duration:80,RadiusOnUse:-0.01f,RadiusPerTick:-0.0002f,ReapplicationDelay:40,Effects:[{Id:15,Duration:200,Ambient:1b},{Id:33,Duration:200,Ambient:1b},{Id:17,Duration:100,Ambient:1b},{Id:7,Duration:20,Ambient:1b},{Id:2,Duration:600,Ambient:1b},{Id:4,Duration:800,Ambient:1b},{Id:9,Duration:100,Ambient:1b},{Id:19,Duration:200,Ambient:1b},{Id:18,Duration:300,Ambient:1b},{Id:20,Duration:200,Ambient:1b}]} 
execute at @a[scores={Arkenstone=2}] run summon area_effect_cloud ~-3 ~ ~-1 {CustomName:"\"Elixir of Death\"",Radius:1.8f,Duration:80,RadiusOnUse:-0.01f,RadiusPerTick:-0.0002f,ReapplicationDelay:40,Effects:[{Id:15,Duration:200,Ambient:1b},{Id:33,Duration:200,Ambient:1b},{Id:17,Duration:100,Ambient:1b},{Id:7,Duration:20,Ambient:1b},{Id:2,Duration:600,Ambient:1b},{Id:4,Duration:800,Ambient:1b},{Id:9,Duration:100,Ambient:1b},{Id:19,Duration:200,Ambient:1b},{Id:18,Duration:300,Ambient:1b},{Id:20,Duration:200,Ambient:1b}]} 
execute at @a[scores={Arkenstone=10}] run fill ~2 ~1 ~2 ~-2 ~-1 ~-2 fire replace air
execute at @a[scores={Arkenstone=1..50}] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace fire
execute at @a[scores={Arkenstone=20}] run fill ~3 ~1 ~3 ~-3 ~-1 ~-3 fire replace air
execute at @a[scores={Arkenstone=20}] run fill ~2 ~1 ~2 ~-2 ~-1 ~-2 air replace fire
execute at @a[scores={Arkenstone=30}] run fill ~4 ~1 ~4 ~-4 ~-1 ~-4 fire replace air
execute at @a[scores={Arkenstone=30}] run fill ~3 ~1 ~3 ~-3 ~-1 ~-3 air replace fire
execute at @a[scores={Arkenstone=40}] run fill ~5 ~1 ~5 ~-5 ~-1 ~-5 fire replace air
execute at @a[scores={Arkenstone=40}] run fill ~4 ~1 ~4 ~-4 ~-1 ~-4 air replace fire
execute at @a[scores={Arkenstone=50}] run fill ~6 ~1 ~6 ~-6 ~-1 ~-6 air replace fire
execute at @a[scores={Arkenstone=202}] run fill ~6 ~ ~6 ~-6 ~ ~-6 air replace fire
execute as @a[scores={Arkenstone=802}] run playsound minecraft:block.bell.resonate block @s
execute as @a[scores={Arkenstone=802}] run scoreboard players set @s Arkenstone 0