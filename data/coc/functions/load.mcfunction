team add 0config
team modify 0config color red
team join 0config config
scoreboard objectives add see dummy
scoreboard objectives setdisplay sidebar.team.red see
scoreboard players set config see 1000
scoreboard objectives modify see displayname {"text":"Team List","color":"red"}
scoreboard objectives add setup dummy
scoreboard objectives add reset trigger
scoreboard players enable @a[team=0config] reset
scoreboard objectives add thanks trigger
scoreboard players enable @a[team=1staff] thanks

scoreboard objectives add opening dummy

scoreboard objectives add closing dummy

tellraw @a[team=0config] ["",{"text":"COC : Loaded\n\nSetup "},{"text":"opening","clickEvent":{"action":"run_command","value":"/scoreboard players set setup setup 1"}},{"text":" / "},{"text":"closing","clickEvent":{"action":"run_command","value":"/scoreboard players set setup setup 2"}}]

give @a[team=0config] written_book{pages:['["",{"text":"Team : \\n"},{"text":"See","clickEvent":{"action":"run_command","value":"/function coc:see"}},{"text":" / "},{"text":"NoSee","clickEvent":{"action":"run_command","value":"/function coc:no_see"}},{"text":"\\n\\nStaff : \\n"},{"text":"See","clickEvent":{"action":"run_command","value":"/team modify 1staff nametagVisibility always"}},{"text":" / "},{"text":"NoSee","clickEvent":{"action":"run_command","value":"/team modify 1staff nametagVisibility never"}},{"text":"\\n\\nSendCmdFdback : \\n"},{"text":"On","clickEvent":{"action":"run_command","value":"/gamerule sendCommandFeedback true"}},{"text":" / "},{"text":"Off","clickEvent":{"action":"run_command","value":"/gamerule sendCommandFeedback false"}},{"text":"\\n\\n"},{"text":"Players List","clickEvent": {"action": "run_command","value":"/function coc:players"}},{"text":"\\n\\n"},{"text":"5 minutes left","clickEvent": {"action": "run_command","value":"/function coc:five_minute_left"}},{"text":"\\n\\n"},{"text":"Start","clickEvent": {"action": "run_command","value":"/function coc:start"}}]'],title:"Control book",author:fantom,display:{Lore:["This book is for the CO Ceremonies"]}}

gamerule disableRaids true
gamerule doDaylightCycle false
gamerule doInsomnia false
gamerule doImmediateRespawn true
gamerule announceAdvancements false
gamerule showDeathMessages false
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doWeatherCycle false
gamerule drowningDamage false
gamerule fallDamage false
gamerule fireDamage false
gamerule keepInventory true