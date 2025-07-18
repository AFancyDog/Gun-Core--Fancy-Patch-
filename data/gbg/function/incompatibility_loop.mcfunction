schedule function gbg:incompatibility_loop 60s replace
scoreboard players set gc gb.datapack_detect 1
# Checks for datapacks incompatible with GC
execute if score gbg gb.datapack_detect matches 1 run tellraw @a ["",{color:"dark_red",bold:true,text:"[⚠ WARNING ⚠] "},{color:"red",text:"You are playing with both "},{color:"#ff649d",underlined:true,text:"Gamingbarn's Guns",click_event:{action:"open_url",url:"https://modrinth.com/datapack/gamingbarns-guns"}},{color:"red",text:" AND "},{color:"#ff649d",underlined:true,text:"Gun Core",click_event:{action:"open_url",url:"https://modrinth.com/datapack/gun-core"}},{color:"red",text:"."},"\n",{color:"red",text:"When both of these mods/datapacks are installed at the same time, problems will arise."},"\n",{color:"red",text:"Uninstall Gun Core to reduce the chance for bugs to occur."}]

