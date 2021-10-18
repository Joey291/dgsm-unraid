## This is a Basic script to make The Discord Gameserver monitor easy to run in an unraid docker container
Original repo: https://github.com/DiscordGSM/DiscordGSM


--After first start of the Container Config files are Created. You Must configure them as you need it otherwise it will not function.--


## You need an API Key for your .env Config.
```
Obtaining an API Key:

Visit the official Discord Developers page here: https://discord.com/developers/applications/
-Click "New App".
-Name your app and click create! Note: A description isn't required.
-You will now be redirected to your created app, at the point you will need to click "Create a Bot User".
-Under the newly created bot section, under "Username" you will see "Token". Reveal the token and copy it into your servers config.
-Now it's time to add your new bot to your guild! To add your bot to your guild you must visit the following link, and replace "botUserID" with the client ID found at the top of your Discord app settings page:https://discordapp.com/oauth2/authorize?client_id=botUserID&scope=bot&permissions=8

Note: "permissions=8" in the link will provide the bot with administrative permissions so you won't have to give it some.
```

>Note: DO NOT SHARE YOUR API KEY! Sharing your key may result in punishments from Discord (including a platform-wide ban) if the token is used to abuse the API.



## Configure your Monitored Servers in the servers.json:
https://github.com/DiscordGSM/DiscordGSM/wiki/servers.json


### Template Servers.json:
```json
[
    {
        "comment": "Informations displayed in the error messages on the console, also usefull to read through servers.json",
        "type": "[string][mandatory] GamedigQuery or SourceQuery or UT3Query or Fake.",
        "game": "[string][mandatory] See https://github.com/gamedig/node-gamedig",
        "address": "[string][mandatory] Relative server address.",
        "port": "[int][mandatory] Server Port.",
        "channel": "[int][mandatory] Discord channel id.",
        "message_id": "[int][optional][autofill] id of the message to update.",
        "image_url": "[string][optional] URL of the Thumbnail image URL https://static.wikia.nocookie.net/minecraft_gamepedia/images/9/93/Grass_Block_JE7_BE6.png",
        "custom": "[string][optional] Additionnal information message showed at the bottom of the server embed",
        "steam_id": "[int][optional] Steam App ID of the game the server is running for. Not the steam id of the dedicated server.",
        "direct_join": "[bool][optional] Set the link to directly join the server instead of just launching the game. Steam_id must be set.",
        "color": "[string][optional] RGB color code : #5b8731",
        "country": "[bool]or[string][optional][autofill] Show the country field, set to false, to disable",
        "title": "[string][optional] Title of the Embed message.",
        "public_address": "[string][optional] Diplayed address with port.",
        "locked": "[bool][optional] Will show the locked icon or unlocked icon.",
        "password": "[string][optional] Server Password.",
        "map": "[string][optional] Overwrite Map Name. set to false to remove field.",
        "maxplayers": "[int][optional] Maximum number of players, overwrite auto-detection if defined.",
        "hostname": "[string][optional] replaces the value of hostname."
    }
]
```
>Note: To Obtain the Channel id in Discord you need to set your discord to Developer Mode under Settings>Advanced. Then right click the channel you want the bot to post the server info and "Copy ID"







# Coming soon:
-Auto update to the newest Github repo

-shrink the base image in size
