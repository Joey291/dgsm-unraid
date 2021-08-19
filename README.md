## This is a Basic script to make The Discord Gameserver monitor easy to run in an unraid docker container
Original repo: https://github.com/DiscordGSM/DiscordGSM

Monitor your game servers on Discord and tracks the live data of your game servers.



--After first start of the Container Config files are Created. You Must configure them as you need it otherwise it will not function.--


## You need an API Key for your settings.json Config.
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
https://github.com/DiscordGSM/DiscordGSM/wiki/Edit-servers.json


### Example Servers.json:
```json
[
    {
        "type": "SourceQuery",
        "game": "Team Fortress 2",
        "addr": "123.456.789.0",
        "port": 27010,
        "channel": 680969817200656387,
        "color": "#ffff00"
    },
    {
        "type": "SourceQuery",
        "game": "My baby game",
        "addr": "my.domain.com",
        "port": 27010,
        "channel": 680969817200656387,
        "country": "HK"
    },
    {
        "type": "SourceQuery",
        "game": "Team Fortress 2",
        "addr": "123.456.789.0",
        "port": 27015,
        "channel": 680969817200656387,
        "image_url": "https://github.com/DiscordGSM/DiscordGSM/blob/master/images/discordgsm.png?raw=true",
        "custom": "Join this server now! Free VIP!"
    },
    {
        "type": "UT3Query",
        "game": "Micecraft: Pocket Edition",
        "addr": "123.456.789.0",
        "port": 19132,
        "channel": 680969817200656387
    },
    {
        "type": "GamedigQuery",
        "game": "csgo",
        "addr": "123.456.789.0",
        "port": 27015,
        "channel": 680969817200656387
    }
]
```
>Note: To Obtain the Channel id in Discord you need to set your discord to Developer Mode under Settings>Advanced. Then right click the channel you want the bot to post the server info and "Copy ID"
