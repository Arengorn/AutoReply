# AutoReply
######  A poke replying TeamSpeak 3 Plugin
AutoReply aims to automate poke replying for TeamSpeak. It is built for informing the user you've received their poke as well as punish them for poke spamming if necessary.
### Installation
---------------
Installing the plugin is quite straightforward, simply go on your TeamSpeak Client installation folder, then plugins, then lua_plugin (`\TeamSpeak 3 Client\plugins\lua_plugin`) and drop the AutoReply folder there. Alternatively you can create a folder in that same directory with a name of your choosing and simply place `init.lua` inside it.
### Activating
-------------
Activating the plugin is simple, after you've placed it in the appropriate folder simply go on your TeamSpeak Client and go on Settings > Plugins. Then make sure `Lua Plugin` is checked, select it and then click on Settings. Select `AutoReply`(or whichever other name you've given to the plugin folder) and then click `OK`(If you don't see this option revise the Installation section). Restart your TeamSpeak Client and you should be good to go.
### Customizing
--------------
Open the `init.lua` file inside the folder where you've put it. On the start of it you should see four variables, `maxpokes`, `maxtime`,`doreply`, `recmsg` and `kickmsg`. These represent the following:

| Variable      | Meaning |
| ------------- | ------------- |
| `maxpokes`    | This represents the max number of pokes before it is considered spam.
| `maxtime`     | The maximum time interval in seconds for spamming to be accounted for. After this time the count resets.
|`doreply`      |The option whether or not you'd like a message to be sent when someone pokes you. Set as `y` for yes and `n` for no.
|`recmsg`       |The message (PM) to be sent to the user that has poked you.                                                                                                     |
|`kickmsg`      |The message to be included with the kick of the poke-abusing user.                                                                                              |
