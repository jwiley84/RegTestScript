Requirements:
- Bot Channels Registrations deployed on Azure for bots that need non-emulator based testing
- ngrok or other tunneling software
- Emulator
- QnA Maker KB and related keys/ids
- LUIS and related keys/ids
- Cognitive services key
- Bot Channels registration with Oauth connection


# Starter instructions:
Clone the samples repo

# Javascript:
- navigate to javascript_nodejs samples
- in command line, run `npm config set registry https://registry.npmjs.org/`


1.  Simple instructions (for samples that don't require keys or ngrok):
    * install npm bot packages, using the @package-number decorator (ie botbuilder-core@4.12.0rc1)
    * npm install the remaining (non-bot) packages
    * start bot
    * test bot in emulator, testing letters, numbers and special characters (1, one, !!)

2. For samples that require keys but no ngrok (samples 11, 13, 14, 17, 21, 49)
    * Add keys to appsettings.json
    * follow instructions from step 1: simple instructions
    * test bot in emulator, testing letters, numbers and special characters (1, one, !!)

3. For samples that require keys, ngrok, and non-emulator channel(18, 23, 24):
    * Add AppId and PW, along with connection string (conn-string not required for sample 23) to appsettings.json
    * follow instructions from step 1: simple instructions
    * start ngrok or other tunneling software
    * test bot in non-teams, non-emulator channel (i use facebook messenger). For 18 and 24, make sure you log out and log back in to ensure connection is not cached

4. For sample that require Teams (25, 46, 50-58)

    **These sample require INDIVIDUAL bot channel registrations, each one connected to the Teams channel, with the teams manifest from the sample added to Teams. You cannot use the same BCR for all of them, as some of the bot capabilities conflict with one another**
    * Add app ID and PW for BCR to bot. 
    * follow instructions from step 1: simple instructions
    * start ngrok or other tunneling software
    * test bot in teams channel. Each bot has different capabilities that require testing, that is not always simple messaging. Please note the instructions in the associated README for each sample. 

# CSharp
- Navigate to CSharp_dotnet samples
- In visual studio code, navigate to 'Manage Nuget Packages'
- Navigate to 'package source  options'
- Add MyGet  as source (https://botbuilder.myget.org/F/botbuilder-v4-dotnet-daily/api/v3/index.json)

For the C-Sharp samples, the instructions for testing is the same as javascript, except instead using npm install, you use nuget package manager. 

# Python
- Navigate to python samples
- using `py -m venv testing`, create and start python env
- using `pip install`, install the following packages:
    *  jsonpickle==1.2
    * msrest==0.6.10
    * requests==2.23.0
    * cryptography==3.3.2
    * PyJWT==1.5.3
    *asyncio
    * aiohttp==3.6.2
    * azure==4.0.0
    * datatypes_date_time
    * django==2.2.6
    * djangorestframework==3.10.3
    * applicationinsights
    * recognizers-text
    * recognizers-text-number
    * recognizers-text-number-with-unit
    * recognizers-text-date-time
    * regex==2019.08.19
    * recognizers-text-choice
    * babel==2.7.0
    * aiounittest==1.3.0
    * azure-cognitiveservices-language-luis==0.2.0
-  For bot packages, use the following pip install: 
    * pip install -i https://test.pypi.org/simple/ botbuilder-core==%pkg%
    * pip install -i https://test.pypi.org/simple/ botbuilder-schema==%pkg%
    * pip install -i https://test.pypi.org/simple/ botframework-connector==%pkg%
    * pip install -i https://test.pypi.org/simple/ botbuilder-dialogs==%pkg%
    * pip install -i https://test.pypi.org/simple/ botbuilder-ai==%pkg%
    * pip install -i https://test.pypi.org/simple/ botbuilder-applicationinsights==%pkg%
    * pip install -i https://test.pypi.org/simple/ botbuilder-integration-applicationinsights-aiohttp>=%pkg%

- While env is running, navigate to each bot sample in turn and test, following the keys/ngrok/channels instructions from the Javascript section
