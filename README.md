# AutoReply
######A poke replying TeamSpeak 3 Plugin
AutoReply aims to automate poke replying for TeamSpeak. It is built for informing the user you've received their poke as well as punish them for poke spamming if necessary.
###Installation
---------------
Installing the plugin is quite straightforward, simply go on your TeamSpeak Client installation folder, plugins and then lua_plugins (`\TeamSpeak 3 Client\plugins\lua_plugin`) and drop the AutoReply folder there. Alternatively you can create a folder in that same directory with a name of your choosing and simply place `init.lua` inside it.
###Customizing
--------------
Open the `init.lua` file inside the folder where you've put it. On the start of it you should see four variables, `maxpokes`, `maxtime`, `recmsg` and `kickmsg`. These represent the following:

| Variable      | Meaning |
| ------------- | ------------- |
| `maxpokes`    | This represents the max number of pokes before it is considered spams minus one. *E.g.* If you wish 3 to be the maximum number of pokes, `maxpokes` will be 2. |
| `maxtime`     | The maximum time interval in seconds for spamming to be accounted for. After this time the count resets.                                                       |
|`recmsg`       |The message (PM) to be sent to the user that has poked you.                                                                                                     |
|`kickmsg`      |The message to be included with the kick of the poke-abusing user.                                                                                              |





