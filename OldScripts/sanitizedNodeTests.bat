<<<<<<< HEAD
@ECHO OFF
::cloning the samples and getting the myget feet setup
mkdir regtest && cd regtest
git clone https://github.com/Microsoft/BotBuilder-Samples.git
cd BotBuilder-Samples/samples/javascript_nodejs
call npm config set registry https://registry.npmjs.org/

set "version=4.1.7"

::swap to 1
cd 01.console-echo
::updating the packages
call npm install botbuilder-core@%version%
call npm install dotenv
call npm install path
call npm install readline
call npm list
PAUSE
::start bot in new window
ECHO STARTING 1
start node index.js

PAUSE

::swap to 2a
ECHO SWAPPING TO 2A
cd ..
cd 02.a.echobot
PAUSE
::updating the packages
call npm install botbuilder@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm list
PAUSE
::starting the bot in another window
ECHO STARTING 2A
start node index.js

PAUSE

::swap to 2b
ECHO SWAPPING TO 2B
cd ..
cd 02.b.echobot-with-counter
::updating the packages
call npm install botbuilder@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm list
PAUSE
::starting the bot in another window
ECHO STARTING 2B
start node index.js

PAUSE

::swap to 3
ECHO SWAPPING TO 3
CD ..
CD 03.welcome-users
::update packages
call npm install botbuilder@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm list
PAUSE
::starting the bot in another window
ECHO STARTING 3
start node index.js

PAUSE

::swap to 4
ECHO SWAPPING TO 4
CD ..
CD 04.simple-prompt
::update packages
call npm install botbuilder@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm install path
call npm list
PAUSE
::starting the bot in another window
ECHO STARTING 4
start node index.js

PAUSE

::swap to 5
ECHO SWAPPING TO 5
CD ..
CD 05.multi-turn-prompt
::update packages
call npm install botbuilder@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm install path
call npm list
PAUSE
::starting the bot in another window
ECHO STARTING 5
start node index.js

PAUSE

::swap to 6
ECHO SWAPPING TO 6
CD ..
CD 06.using-cards
::update packages
call npm install botbuilder@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm list
PAUSE
::starting the bot in another window
ECHO STARTING 6
start node index.js

PAUSE

::swap to 7
ECHO SWAPPING TO 7
CD ..
CD 07.using-adaptive-cards
::update packages
call npm install botbuilder@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm list
PAUSE
::starting the bot in another window
ECHO STARTING 7
start node index.js 

PAUSE

::swap to 8
ECHO SWAPPING TO 8
CD ..
CD 08.suggested-actions
::update packages
call npm install botbuilder@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm list
PAUSE
::starting the bot in another window
ECHO STARTING 8
start node index.js

PAUSE

::swap to 9
ECHO SWAPPING TO 9
CD ..
CD 09.message-routing
::update packages
call npm install botbuilder@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm list
PAUSE
::starting the bot in another window
ECHO STARTING 9
start node index.js

PAUSE

::swap to 10
ECHO SWAPPING TO 10
CD ..
CD 10.prompt-validations
::update packages
call npm install botbuilder@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm install path
call npm install moment
call npm list
PAUSE
::starting the bot in another window
ECHO STARTING 10
start node index.js

PAUSE

ECHO SWAP TO 11
cd ..
cd 11.qnamaker
::updating the packages
call npm install botbuilder@%version%
call npm install botbuilder-ai@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm list
PAUSE
call code .
ECHO ************ PAUSED to change the bot file cuz qna msbot connect command. Delete the empty one. 
PAUSE
call msbot connect qna <MSBOT INFO HERE>
set "fixFile=index.js"
set "fixOld=QNA_CONFIGURATION = ''"
set "fixNew=QNA_CONFIGURATION = 'qnamakerService'"
powershell -file C:\Users\v-jewail\Desktop\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
PAUSE
::start bot in new window
ECHO STARTING 11
start node index.js
PAUSE

ECHO SWAP TO 12
cd ..
cd 12.nlp-with-luis
::updating the packages
call npm install botbuilder@%version%
call npm install botbuilder-ai@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm list
PAUSE
::MSBOT CONNECTOR
CALL code .
PAUSE
CALL msbot disconnect 34
ECHO.
CALL msbot connect luis <MSBOT INFO HERE>
set "fixFile=index.js"
set "fixOld=LUIS_CONFIGURATION = ''"
set "fixNew=LUIS_CONFIGURATION = 'reminders'"
powershell -file C:\Users\v-jewail\Desktop\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
ECHO.
PAUSE
::start bot in new window
ECHO STARTING 12
start node index.js

PAUSE

ECHO SWAP TO 13
cd ..
cd 13.basic-bot
::updating the packages
call npm install botbuilder@%version%
call npm install botbuilder-ai@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm list
PAUSE
::MSBOT CONNECTOR
CALL code .
ECHO ************ PAUSED to change the bot file cuz qna msbot connect command. Delete the empty one. 
PAUSE
::CALL msbot disconnect 34
ECHO.
CALL msbot connect luis <MSBOT INFO HERE>
set "fixFile=bot.js"
set "fixOld=LUIS_CONFIGURATION = ''"
set "fixNew=LUIS_CONFIGURATION = 'basicChatter'"
powershell -file C:\Users\v-jewail\Desktop\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
ECHO.
PAUSE
::start bot in new window
ECHO STARTING 13
start node index.js

PAUSE

ECHO SWAP TO 14
cd ..
cd 14.nlp-with-dispatch
::updating the packages
call npm install botbuilder@%version%
call npm install botbuilder-ai@%version%
call npm install botbuilder-azure@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm list
PAUSE
::MSBOT CONNECTOR
CALL code .
ECHO ************ PAUSED to change the bot file cuz qna msbot connect command. Delete the empty one. 
PAUSE
::CALL msbot disconnect 7
::ECHO.
::CALL msbot disconnect 50
::ECHO.
::CALL msbot disconnect 161
::ECHO.
::ECHO 201 IS QNA, MIGHT NEED MANUAL REMOVAL
::ECHO.
::CALL msbot disconnect 201
ECHO.
CALL msbot connect luis <MSBOT INFO HERE>
CALL msbot connect luis <MSBOT INFO HERE>
CALL msbot connect qna <MSBOT INFO HERE>
PAUSE
call dispatch init --bot C:\Users\v-jewail\Desktop\regtest\BotBuilder-Samples\samples\javascript_nodejs\14.nlp-with-dispatch\nlp-with-dispatch.bot
call dispatch create --bot C:\Users\v-jewail\Desktop\regtest\BotBuilder-Samples\samples\javascript_nodejs\14.nlp-with-dispatch\nlp-with-dispatch.bot
call msbot connect dispatch --input C:\Users\v-jewail\Desktop\regtest\BotBuilder-Samples\samples\javascript_nodejs\14.nlp-with-dispatch\nlp-with-dispatchDispatch.dispatch
PAUSE
set "fixFile=homeAutomation.js"
set "fixOld=LUIS_CONFIGURATION = 'Home Automation'"
set "fixNew=LUIS_CONFIGURATION = 'HomeAutomation'"
powershell -file C:\Users\v-jewail\Desktop\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
set "fixFile=qna.js"
set "fixOld=QNA_CONFIGURATION = 'sample-qna'"
set "fixNew=QNA_CONFIGURATION = 'chatterQnA'"
powershell -file C:\Users\v-jewail\Desktop\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
ECHO.
PAUSE
::start bot in new window
ECHO STARTING 14
start node index.js

PAUSE

::swap to 15
ECHO SWAP TO 15
cd ..
cd 15.handling-attachments
::updating the packages
call npm install botbuilder@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm install axios
call npm list
PAUSE
::start bot in new window
ECHO STARTING 15
start node index.js

PAUSE

ECHO SWAP TO 16
cd ..
cd 16.proactive-messages
::updating the packages
call npm install botbuilder@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install fetch-ponyfill
call npm install moment
call npm install path
call npm install restify
call npm list
PAUSE
:: start bot in new window
ECHO STARTING 16
start node index.js

PAUSE

ECHO SWAP TO 17
cd .. 
cd 17.multilingual-conversations
::updating the packages
call npm install botbuilder@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install node-fetch
call npm install restify
call npm list
PAUSE
ECHO STARTING 17
start node index.js

PAUSE

ECHO SWAP TO 18
cd ..
cd 18.bot-authentication
::updating the packages
call npm install botbuilder@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm list
PAUSE
::MSBOT CONNECTOR
PAUSE
::start bot in new window
ECHO STARTING 18
ECHO ***************************************THIS MUST BE TESTED IN NGROK WITH AN ACCURATE CONNECTOR!***************************************
start node index.js

PAUSE

ECHO SWAP TO 19
cd ..
cd 19.custom-dialogs
::updating the packages
call npm install botbuilder@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm list
PAUSE
::MSBOT CONNECTOR
PAUSE
::start bot in new window
ECHO STARTING 19
start node index.js

PAUSE

ECHO SWAP TO 20
cd ..
cd 20.qna-with-appinsights
::updating the packages
call npm install botbuilder@%version%
call npm install botbuilder-ai@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm install applicationinsights
call npm list
PAUSE
::MSBOT CONNECTOR
CALL code .
ECHO ************ PAUSED to change the bot file cuz qna msbot connect command. Delete the empty one. 
PAUSE
::CALL msbot disconnect 34
ECHO.
CALL msbot disconnect 4
ECHO.
CALL msbot connect appinsights <MSBOT INFO HERE>
set "fixFile=index.js"
set "fixOld=QNA_CONFIGURATION = ''"
set "fixNew=QNA_CONFIGURATION = 'qnamakerService'"
powershell -file C:\Users\v-jewail\Desktop\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
set "fixOld=APP_INSIGHTS_CONFIGURATION = ''"
set "fixNew=APP_INSIGHTS_CONFIGURATION = 'appInsights'"
powershell -file C:\Users\v-jewail\Desktop\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
ECHO.
PAUSE
::start bot in new window
ECHO STARTING 20
start node index.js

PAUSE

ECHO SWAP TO 21
cd ..
cd 21.luis-with-appinsights
::updating the packages
call npm install botbuilder@%version%
call npm install botbuilder-ai@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm install applicationinsights
call npm list
PAUSE
::MSBOT CONNECTOR
CALL code .
ECHO ************ PAUSED to change the bot file cuz qna msbot connect command. Delete the empty one. 
PAUSE
CALL msbot disconnect 34
ECHO.
CALL msbot disconnect 4
ECHO.
CALL msbot connect luis <MSBOT INFO HERE>
CALL msbot connect appinsights <MSBOT INFO HERE>
set "fixFile=index.js"
set "fixOld=LUIS_CONFIGURATION = ''"
set "fixNew=LUIS_CONFIGURATION = 'reminders'"
powershell -file C:\Users\v-jewail\Desktop\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
set "fixOld=APP_INSIGHTS_CONFIGURATION = ''"
set "fixNew=APP_INSIGHTS_CONFIGURATION = 'appInsights'"
powershell -file C:\Users\v-jewail\Desktop\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
ECHO.
PAUSE
::start bot in new window
ECHO STARTING 21
start node index.js

PAUSE
::====================================================>> THERE IS NO 22

ECHO SWAP TO 23
cd ..
cd 23.facebook-events
::updating the packages
call npm install botbuilder@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm list
PAUSE
ECHO STARTING 23
start node index.js

PAUSE

ECHO SWAP TO 24
cd ..
cd 24.bot-authentication-msgraph
::updating the packages
call npm install botbuilder@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm install @microsoft/microsoft-graph-client
call npm list
PAUSE
::MSBOT CONNECTOR
PAUSE
::start bot in new window
ECHO STARTING 24
ECHO ***************************************THIS MUST BE TESTED IN NGROK WITH AN ACCURATE CONNECTOR!***************************************
start node index.js

PAUSE

ECHO SWAP TO 25
cd ..
cd 25.logger
::updating the packages
call npm install botbuilder@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install node-fetch
call npm install restify
call npm list
PAUSE
ECHO STARTING 25
start node index.js

PAUSE

ECHO SWAP TO 26
cd ..
cd 26.transcript-logger
::updating the packages
call npm install botbuilder@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install node-fetch
call npm install restify
call npm list
PAUSE
ECHO STARTING 26
start node index.js

PAUSE

::====================================================>> 40 is not a testable bot
::====================================================>> THERE ARE NO BOTS FROM 41-49

ECHO SWAP TO 50
cd ..
cd 50.diceroller-skill
::THIS IS TEMPORARY UNTIL THE ENV FILE FIX IS PUSHED THROUGH
break>".env"
(
    echo botFilePath=diceroller-skill.bot
    echo botFileSecret=
)>".env"
dir
::updating the packages
call npm install botbuilder@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install path
call npm install restify
call npm list
PAUSE
ECHO STARTING 50
start node index.js

PAUSE

ECHO SWAP TO 51
cd ..
cd 51.cafe-bot
::updating the packages
call npm install botbuilder@%version%
call npm install botbuilder-ai@%version%
call npm install botbuilder-azure@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm install @microsoft/recognizers-text-data-types-timex-expression
call npm list
PAUSE
::MSBOT CONNECTOR
CALL code .
PAUSE
ECHO.
CALL msbot connect qna <MSBOT INFO HERE>
CALL msbot connect luis <MSBOT INFO HERE>
CALL msbot connect luis <MSBOT INFO HERE>
CALL msbot connect luis <MSBOT INFO HERE>

ECHO.
PAUSE
::start bot in new window
ECHO STARTING 14
start node index.js

PAUSE

ECHO DONE, YO!
PAUSE
CLS
=======
@ECHO OFF
::cloning the samples and getting the myget feet setup
mkdir regtest && cd regtest
git clone https://github.com/Microsoft/BotBuilder-Samples.git
cd BotBuilder-Samples/samples/javascript_nodejs
call npm config set registry https://registry.npmjs.org/

set "version=4.1.7"

::swap to 1
cd 01.console-echo
::updating the packages
call npm install botbuilder-core@%version%
call npm install dotenv
call npm install path
call npm install readline
call npm list
PAUSE
::start bot in new window
ECHO STARTING 1
start node index.js

PAUSE

::swap to 2a
ECHO SWAPPING TO 2A
cd ..
cd 02.a.echobot
PAUSE
::updating the packages
call npm install botbuilder@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm list
PAUSE
::starting the bot in another window
ECHO STARTING 2A
start node index.js

PAUSE

::swap to 2b
ECHO SWAPPING TO 2B
cd ..
cd 02.b.echobot-with-counter
::updating the packages
call npm install botbuilder@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm list
PAUSE
::starting the bot in another window
ECHO STARTING 2B
start node index.js

PAUSE

::swap to 3
ECHO SWAPPING TO 3
CD ..
CD 03.welcome-users
::update packages
call npm install botbuilder@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm list
PAUSE
::starting the bot in another window
ECHO STARTING 3
start node index.js

PAUSE

::swap to 4
ECHO SWAPPING TO 4
CD ..
CD 04.simple-prompt
::update packages
call npm install botbuilder@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm install path
call npm list
PAUSE
::starting the bot in another window
ECHO STARTING 4
start node index.js

PAUSE

::swap to 5
ECHO SWAPPING TO 5
CD ..
CD 05.multi-turn-prompt
::update packages
call npm install botbuilder@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm install path
call npm list
PAUSE
::starting the bot in another window
ECHO STARTING 5
start node index.js

PAUSE

::swap to 6
ECHO SWAPPING TO 6
CD ..
CD 06.using-cards
::update packages
call npm install botbuilder@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm list
PAUSE
::starting the bot in another window
ECHO STARTING 6
start node index.js

PAUSE

::swap to 7
ECHO SWAPPING TO 7
CD ..
CD 07.using-adaptive-cards
::update packages
call npm install botbuilder@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm list
PAUSE
::starting the bot in another window
ECHO STARTING 7
start node index.js 

PAUSE

::swap to 8
ECHO SWAPPING TO 8
CD ..
CD 08.suggested-actions
::update packages
call npm install botbuilder@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm list
PAUSE
::starting the bot in another window
ECHO STARTING 8
start node index.js

PAUSE

::swap to 9
ECHO SWAPPING TO 9
CD ..
CD 09.message-routing
::update packages
call npm install botbuilder@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm list
PAUSE
::starting the bot in another window
ECHO STARTING 9
start node index.js

PAUSE

::swap to 10
ECHO SWAPPING TO 10
CD ..
CD 10.prompt-validations
::update packages
call npm install botbuilder@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm install path
call npm install moment
call npm list
PAUSE
::starting the bot in another window
ECHO STARTING 10
start node index.js

PAUSE

ECHO SWAP TO 11
cd ..
cd 11.qnamaker
::updating the packages
call npm install botbuilder@%version%
call npm install botbuilder-ai@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm list
PAUSE
call code .
ECHO ************ PAUSED to change the bot file cuz qna msbot connect command. Delete the empty one. 
PAUSE
call msbot connect qna <MSBOT INFO HERE>
set "fixFile=index.js"
set "fixOld=QNA_CONFIGURATION = ''"
set "fixNew=QNA_CONFIGURATION = 'qnamakerService'"
powershell -file C:\Users\v-jewail\Desktop\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
PAUSE
::start bot in new window
ECHO STARTING 11
start node index.js
PAUSE

ECHO SWAP TO 12
cd ..
cd 12.nlp-with-luis
::updating the packages
call npm install botbuilder@%version%
call npm install botbuilder-ai@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm list
PAUSE
::MSBOT CONNECTOR
CALL code .
PAUSE
CALL msbot disconnect 34
ECHO.
CALL msbot connect luis <MSBOT INFO HERE>
set "fixFile=index.js"
set "fixOld=LUIS_CONFIGURATION = ''"
set "fixNew=LUIS_CONFIGURATION = 'reminders'"
powershell -file C:\Users\v-jewail\Desktop\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
ECHO.
PAUSE
::start bot in new window
ECHO STARTING 12
start node index.js

PAUSE

ECHO SWAP TO 13
cd ..
cd 13.basic-bot
::updating the packages
call npm install botbuilder@%version%
call npm install botbuilder-ai@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm list
PAUSE
::MSBOT CONNECTOR
CALL code .
ECHO ************ PAUSED to change the bot file cuz qna msbot connect command. Delete the empty one. 
PAUSE
::CALL msbot disconnect 34
ECHO.
CALL msbot connect luis <MSBOT INFO HERE>
set "fixFile=bot.js"
set "fixOld=LUIS_CONFIGURATION = ''"
set "fixNew=LUIS_CONFIGURATION = 'basicChatter'"
powershell -file C:\Users\v-jewail\Desktop\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
ECHO.
PAUSE
::start bot in new window
ECHO STARTING 13
start node index.js

PAUSE

ECHO SWAP TO 14
cd ..
cd 14.nlp-with-dispatch
::updating the packages
call npm install botbuilder@%version%
call npm install botbuilder-ai@%version%
call npm install botbuilder-azure@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm list
PAUSE
::MSBOT CONNECTOR
CALL code .
ECHO ************ PAUSED to change the bot file cuz qna msbot connect command. Delete the empty one. 
PAUSE
::CALL msbot disconnect 7
::ECHO.
::CALL msbot disconnect 50
::ECHO.
::CALL msbot disconnect 161
::ECHO.
::ECHO 201 IS QNA, MIGHT NEED MANUAL REMOVAL
::ECHO.
::CALL msbot disconnect 201
ECHO.
CALL msbot connect luis <MSBOT INFO HERE>
CALL msbot connect luis <MSBOT INFO HERE>
CALL msbot connect qna <MSBOT INFO HERE>
PAUSE
call dispatch init --bot C:\Users\v-jewail\Desktop\regtest\BotBuilder-Samples\samples\javascript_nodejs\14.nlp-with-dispatch\nlp-with-dispatch.bot
call dispatch create --bot C:\Users\v-jewail\Desktop\regtest\BotBuilder-Samples\samples\javascript_nodejs\14.nlp-with-dispatch\nlp-with-dispatch.bot
call msbot connect dispatch --input C:\Users\v-jewail\Desktop\regtest\BotBuilder-Samples\samples\javascript_nodejs\14.nlp-with-dispatch\nlp-with-dispatchDispatch.dispatch
PAUSE
set "fixFile=homeAutomation.js"
set "fixOld=LUIS_CONFIGURATION = 'Home Automation'"
set "fixNew=LUIS_CONFIGURATION = 'HomeAutomation'"
powershell -file C:\Users\v-jewail\Desktop\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
set "fixFile=qna.js"
set "fixOld=QNA_CONFIGURATION = 'sample-qna'"
set "fixNew=QNA_CONFIGURATION = 'chatterQnA'"
powershell -file C:\Users\v-jewail\Desktop\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
ECHO.
PAUSE
::start bot in new window
ECHO STARTING 14
start node index.js

PAUSE

::swap to 15
ECHO SWAP TO 15
cd ..
cd 15.handling-attachments
::updating the packages
call npm install botbuilder@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm install axios
call npm list
PAUSE
::start bot in new window
ECHO STARTING 15
start node index.js

PAUSE

ECHO SWAP TO 16
cd ..
cd 16.proactive-messages
::updating the packages
call npm install botbuilder@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install fetch-ponyfill
call npm install moment
call npm install path
call npm install restify
call npm list
PAUSE
:: start bot in new window
ECHO STARTING 16
start node index.js

PAUSE

ECHO SWAP TO 17
cd .. 
cd 17.multilingual-conversations
::updating the packages
call npm install botbuilder@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install node-fetch
call npm install restify
call npm list
PAUSE
ECHO STARTING 17
start node index.js

PAUSE

ECHO SWAP TO 18
cd ..
cd 18.bot-authentication
::updating the packages
call npm install botbuilder@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm list
PAUSE
::MSBOT CONNECTOR
PAUSE
::start bot in new window
ECHO STARTING 18
ECHO ***************************************THIS MUST BE TESTED IN NGROK WITH AN ACCURATE CONNECTOR!***************************************
start node index.js

PAUSE

ECHO SWAP TO 19
cd ..
cd 19.custom-dialogs
::updating the packages
call npm install botbuilder@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm list
PAUSE
::MSBOT CONNECTOR
PAUSE
::start bot in new window
ECHO STARTING 19
start node index.js

PAUSE

ECHO SWAP TO 20
cd ..
cd 20.qna-with-appinsights
::updating the packages
call npm install botbuilder@%version%
call npm install botbuilder-ai@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm install applicationinsights
call npm list
PAUSE
::MSBOT CONNECTOR
CALL code .
ECHO ************ PAUSED to change the bot file cuz qna msbot connect command. Delete the empty one. 
PAUSE
::CALL msbot disconnect 34
ECHO.
CALL msbot disconnect 4
ECHO.
CALL msbot connect appinsights <MSBOT INFO HERE>
set "fixFile=index.js"
set "fixOld=QNA_CONFIGURATION = ''"
set "fixNew=QNA_CONFIGURATION = 'qnamakerService'"
powershell -file C:\Users\v-jewail\Desktop\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
set "fixOld=APP_INSIGHTS_CONFIGURATION = ''"
set "fixNew=APP_INSIGHTS_CONFIGURATION = 'appInsights'"
powershell -file C:\Users\v-jewail\Desktop\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
ECHO.
PAUSE
::start bot in new window
ECHO STARTING 20
start node index.js

PAUSE

ECHO SWAP TO 21
cd ..
cd 21.luis-with-appinsights
::updating the packages
call npm install botbuilder@%version%
call npm install botbuilder-ai@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm install applicationinsights
call npm list
PAUSE
::MSBOT CONNECTOR
CALL code .
ECHO ************ PAUSED to change the bot file cuz qna msbot connect command. Delete the empty one. 
PAUSE
CALL msbot disconnect 34
ECHO.
CALL msbot disconnect 4
ECHO.
CALL msbot connect luis <MSBOT INFO HERE>
CALL msbot connect appinsights <MSBOT INFO HERE>
set "fixFile=index.js"
set "fixOld=LUIS_CONFIGURATION = ''"
set "fixNew=LUIS_CONFIGURATION = 'reminders'"
powershell -file C:\Users\v-jewail\Desktop\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
set "fixOld=APP_INSIGHTS_CONFIGURATION = ''"
set "fixNew=APP_INSIGHTS_CONFIGURATION = 'appInsights'"
powershell -file C:\Users\v-jewail\Desktop\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
ECHO.
PAUSE
::start bot in new window
ECHO STARTING 21
start node index.js

PAUSE
::====================================================>> THERE IS NO 22

ECHO SWAP TO 23
cd ..
cd 23.facebook-events
::updating the packages
call npm install botbuilder@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm list
PAUSE
ECHO STARTING 23
start node index.js

PAUSE

ECHO SWAP TO 24
cd ..
cd 24.bot-authentication-msgraph
::updating the packages
call npm install botbuilder@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm install @microsoft/microsoft-graph-client
call npm list
PAUSE
::MSBOT CONNECTOR
PAUSE
::start bot in new window
ECHO STARTING 24
ECHO ***************************************THIS MUST BE TESTED IN NGROK WITH AN ACCURATE CONNECTOR!***************************************
start node index.js

PAUSE

ECHO SWAP TO 25
cd ..
cd 25.logger
::updating the packages
call npm install botbuilder@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install node-fetch
call npm install restify
call npm list
PAUSE
ECHO STARTING 25
start node index.js

PAUSE

ECHO SWAP TO 26
cd ..
cd 26.transcript-logger
::updating the packages
call npm install botbuilder@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install node-fetch
call npm install restify
call npm list
PAUSE
ECHO STARTING 26
start node index.js

PAUSE

::====================================================>> 40 is not a testable bot
::====================================================>> THERE ARE NO BOTS FROM 41-49

ECHO SWAP TO 50
cd ..
cd 50.diceroller-skill
::THIS IS TEMPORARY UNTIL THE ENV FILE FIX IS PUSHED THROUGH
break>".env"
(
    echo botFilePath=diceroller-skill.bot
    echo botFileSecret=
)>".env"
dir
::updating the packages
call npm install botbuilder@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install path
call npm install restify
call npm list
PAUSE
ECHO STARTING 50
start node index.js

PAUSE

ECHO SWAP TO 51
cd ..
cd 51.cafe-bot
::updating the packages
call npm install botbuilder@%version%
call npm install botbuilder-ai@%version%
call npm install botbuilder-azure@%version%
call npm install botbuilder-dialogs@%version%
call npm install botframework-config@%version%
call npm install dotenv
call npm install restify
call npm install @microsoft/recognizers-text-data-types-timex-expression
call npm list
PAUSE
::MSBOT CONNECTOR
CALL code .
PAUSE
ECHO.
CALL msbot connect qna <MSBOT INFO HERE>
CALL msbot connect luis <MSBOT INFO HERE>
CALL msbot connect luis <MSBOT INFO HERE>
CALL msbot connect luis <MSBOT INFO HERE>

ECHO.
PAUSE
::start bot in new window
ECHO STARTING 14
start node index.js

PAUSE

ECHO DONE, YO!
PAUSE
CLS
>>>>>>> 730b7aea23457cc0044f4ea70d3184b0fff4d3f6
EXIT