@ECHO OFF

set "loc=4.4.0-RC0"
SET me=%~n0
SET parent=%~dp0

::cloning the samples and getting the myget feed setup
mkdir %loc% && cd %loc%
git clone https://github.com/Microsoft/BotBuilder-Samples.git 4.4.0-RC0
cd %loc%/samples/csharp_dotnetcore

call code .

:: *******************************************SWAPPING BOTS!*******************************************
CD 00.empty-bot
set test=%CD%

ECHO.
ECHO UPDATING 00 EMPTY BOT
ECHO.

::updating the packages
call %parent%\looptest.bat
call code %test%\EmptyBot.csproj
pause
::start bot in new window
ECHO STARTING 00 EMPTY BOT
start dotnet run

PAUSE 
CD ..

:: *******************************************SWAPPING BOTS!*******************************************
CD 01.console-echo
set test=%CD%

ECHO.
ECHO UPDATING 01 CONSOLE ECHO
ECHO.

::updating the packages
call %parent%\looptest.bat
call code %test%\Console-EchoBot.csproj
pause
::start bot in new window
ECHO STARTING 01 CONSOLE ECHO
start dotnet run

PAUSE
CD ..

:: *******************************************SWAPPING BOTS!*******************************************
CD 02.b.echo-with-counter
set test=%CD%

ECHO.
ECHO UPDATING 02 ECHO WITH COUNTER
ECHO.

::updating the packages
call %parent%\looptest.bat
call code %test%\EchoBotWithCounter.csproj
pause
::start bot in new window
ECHO STARTING 02 ECHO WITH COUNTER
start dotnet run

PAUSE
CD ..

:: *******************************************SWAPPING BOTS!*******************************************
CD 03.welcome-user
set test=%CD%

ECHO.
ECHO UPDATING 03 WELCOME USER
ECHO.

::updating the packages
call %parent%\looptest.bat
call code %test%\WelcomeUser.csproj

::fix the port
set "fixFile=Properties/launchSettings.json"
set "fixOld=http://localhost:1205/"
set "fixNew=http://localhost:3978/"
powershell -file %parent%\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
pause

::start bot in new window
ECHO STARTING 03 WELCOME USER
start dotnet run

PAUSE
CD ..

:: *******************************************SWAPPING BOTS!*******************************************
cd 04.simple-prompt
set test=%CD%

ECHO.
ECHO UPDATING 04 SIMPLE PROMPT
ECHO.
::updating the packages
call %parent%\looptest.bat
call code %test%\SimplePromptBot.csproj
pause

::start bot in new window
ECHO STARTING 4 SIMPLE PROMPT
start dotnet run

PAUSE
CD ..

:: *******************************************SWAPPING BOTS!*******************************************
CD 05.multi-turn-prompt
set test=%CD%

ECHO.
ECHO UPDATING 05 MULTI TURN PROMPT
ECHO.

::updating the packages
call %parent%\looptest.bat
call code %test%\MultiTurnPromptsBot.csproj
pause

::start bot in new window
ECHO STARTING 05 MULTI TURN PROMPT
start dotnet run

PAUSE
CD ..

:: *******************************************SWAPPING BOTS!*******************************************
CD 06.using-cards
set test=%CD%

ECHO.
ECHO UPDATING 06 CARDS BOT
ECHO.

::updating the packages
call %parent%\looptest.bat
call code %test%\CardsBot.csproj

::FIX THE PORT
set "fixFile=Properties/launchSettings.json"
set "fixOld=http://localhost:1205/"
set "fixNew=http://localhost:3978/"
powershell -file %parent%\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
pause

::start bot in new window
ECHO STARTING 06 CARDS BOT
start dotnet run

PAUSE
CD ..

:: *******************************************SWAPPING BOTS!*******************************************
CD 07.using-adaptive-cards
set test=%CD%

ECHO.
ECHO UPDATING 07 ADAPTIVE CARDS
ECHO.

::updating the packages
call %parent%\looptest.bat
call code %test%\AdaptiveCardsBot.csproj

::FIX THE PORT
set "fixFile=Properties/launchSettings.json"
set "fixOld=http://localhost:1205/"
set "fixNew=http://localhost:3978/"
powershell -file %parent%\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
pause

::start bot in new window
ECHO STARTING 07 ADAPTIVE CARDS
start dotnet run

PAUSE 
CD ..

:: *******************************************SWAPPING BOTS!*******************************************
CD 08.suggested-actions
set test=%CD%

ECHO.
ECHO UPDATING 08 SUGGESTED ACTIONS
ECHO.

::updating the packages
call %parent%\looptest.bat
call code %test%\SuggestedActionsBot.csproj

::FIX THE PORT
set "fixFile=Properties/launchSettings.json"
set "fixOld=http://localhost:1205/"
set "fixNew=http://localhost:3978/"
powershell -file %parent%\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
pause

::start bot in new window
ECHO STARTING 08 SUGGESTED ACTIONS
start dotnet run

PAUSE 
CD ..

:: *******************************************SWAPPING BOTS!*******************************************
CD 09.message-routing
set test=%CD%

ECHO.
ECHO UPDATING 09 MESSAGE ROUTING
ECHO.

::updating the packages
call %parent%\looptest.bat
call code %test%\MessageRoutingBot.csproj

::FIX THE PORT
set "fixFile=Properties/launchSettings.json"
set "fixOld=http://localhost:1205/"
set "fixNew=http://localhost:3978/"
powershell -file %parent%\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
pause

::start bot in new window
ECHO STARTING 09 MESSAGE ROUTING
start dotnet run

PAUSE 
CD ..

:: *******************************************SWAPPING BOTS!*******************************************
CD 10.prompt-validations
set test=%CD%

ECHO.
ECHO UPDATING 10 PROMPT VALIDATIONS
ECHO.

::updating the packages
call %parent%\looptest.bat
call code %test%\PromptValidationsBot.csproj

::FIX THE PORT??
set "fixFile=Properties/launchSettings.json"
set "fixOld=http://localhost:1205/"
set "fixNew=http://localhost:3978/"
powershell -file %parent%\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
pause

::start bot in new window
ECHO STARTING 10 PROMPT VALIDATIONS
start dotnet run

PAUSE 
CD ..

:: *******************************************SWAPPING BOTS!*******************************************
CD 11.qnamaker
set test=%CD%

ECHO.
ECHO UPDATING 11 QNAMAKER
ECHO.

::updating the packages
call %parent%\looptest.bat
call code %test%\QnABot.csproj

::UPDATE BOT FILE HERE (FOR NOW)
ECHO ************ PAUSED to change the bot file cuz qna msbot connect command. Delete the empty one. 
PAUSE
call msbot connect qna -n QnABot -k ***** --subscriptionKey ***** --endpointKey ***** --hostname https://jjqnabot.azurewebsites.net/qnamaker

::FIX THE PORT
set "fixFile=Properties/launchSettings.json"
set "fixOld=http://localhost:1205/"
set "fixNew=http://localhost:3978/"
powershell -file %parent%\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
pause

::start bot in new window
ECHO STARTING 11 QNAMAKER
start dotnet run

PAUSE 
CD ..

:: *******************************************SWAPPING BOTS!*******************************************
CD 12.nlp-with-luis
set test=%CD%

ECHO.
ECHO UPDATING 12 NLP WITH LUIS
ECHO.

::updating the packages
call %parent%\looptest.bat
call code %test%\LuisBot.csproj

::update the bot file
ECHO ************ PAUSED doublecheck the bot file
PAUSE
call msbot disconnect 34
ECHO.
CALL msbot connect luis --name LuisBot --appId ***** --version 0.1 --authoringKey ***** --subscriptionKey *****
ECHO.

::UPDATE THE PORT
set "fixFile=Properties/launchSettings.json"
set "fixOld=http://localhost:1205/"
set "fixNew=http://localhost:3978/"
powershell -file %parent%\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
pause

::start bot in new window
ECHO STARTING 12 NLP WITH LUIS
start dotnet run

PAUSE 
CD ..

:: *******************************************SWAPPING BOTS!*******************************************
CD 13.basic-bot
set test=%CD%

ECHO.
ECHO UPDATING 13 BASIC BOT
ECHO.

::updating the packages
call %parent%\looptest.bat
call code %test%\BasicBot.csproj

::UPDATE THE BOT FILE
ECHO ************ PAUSED doublecheck the bot file (removed extra ,)
PAUSE
call msbot disconnect 34
ECHO.
CALL msbot connect luis --name basicChatter --appId ***** --version 0.1 --authoringKey ***** --subscriptionKey *****

::UPDATE THE BOT CONFIG
set "fixFile=BasicBot.cs"
set "fixOld=YOUR_LUIS_SERVICE_NAME"
set "fixNew=basicChatter"
powershell -file %parent%\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
pause

::start bot in new window
ECHO STARTING 13 Basic Bot
start dotnet run

PAUSE 
CD ..

:: *******************************************SWAPPING BOTS!*******************************************
CD 14.nlp-with-dispatch
set test=%CD%

ECHO.
ECHO UPDATING 14 nlp with dispatch
ECHO.

::updating the packages
call %parent%\looptest.bat
call code %test%\NLP-With-Dispatch-Bot.csproj

::UPDATE THE BOT FILE
ECHO ************ PAUSED gut the bot file
PAUSE
REM these are here for if they fix the bad qna msbot command eventually
::call msbot disconnect 7 
::call msbot disconnect 50
::call msbot disconnect 201
::call msbot disconnect 161
ECHO.
CALL msbot connect luis --name HomeAutomation --appId ***** --version 0.1 --authoringKey ***** --subscriptionKey *****
CALL msbot connect luis --name Weather --appId ***** --version 0.1 --authoringKey ***** --subscriptionKey *****
CALL msbot connect qna -n chatterQnA -k ***** --subscriptionKey ***** --endpointKey ***** --hostname https://JJtesterbot-qnahost.azurewebsites.net/qnamaker
PAUSE
call dispatch init --bot nlp-with-dispatch.bot
call dispatch create --bot nlp-with-dispatch.bot
::call msbot connect dispatch --input nlp-with-dispatchDispatch.dispatch
call msbot connect dispatch -n nlp-with-dispatchDispatch -a ***** --version 2.0 --authoringKey ***** --subscriptionKey *****

PAUSE
set "fixFile=NlpDispatch/NlpDispatchBot.cs"
set "fixOld=Home Automation"
set "fixNew=HomeAutomation"
powershell -file %parent%\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
set "fixFile=NlpDispatch/NlpDispatchBot.cs"
set "fixOld=sample-qna"
set "fixNew=chatterQnA"
powershell -file %parent%\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
pause

ECHO ************ PAUSED doublecheck the NlpDispatchBot.cs for correct names of LUIS and QnA
pause
::start bot in new window
ECHO STARTING 14 NLP WITH DISPATCH
start dotnet run

PAUSE
CD ..

:: *******************************************SWAPPING BOTS!*******************************************
CD 15.handling-attachments
set test=%CD%

ECHO.
ECHO UPDATING 15 HANDLING ATTACHMENTS
ECHO.

::updating the packages
call %parent%\looptest.bat
call code %test%\HandlingAttachmentsBot.csproj

::start bot in new window
ECHO STARTING 15 HANDLING ATTACHMENTS
start dotnet run

PAUSE
CD ..

:: *******************************************SWAPPING BOTS!*******************************************
CD 16.proactive-messages
set test=%CD%

ECHO.
ECHO UPDATING 16 PROACTIVE MESSAGES
ECHO.

::updating the packages
call %parent%\looptest.bat
call code %test%\ProactiveBot.csproj

::start bot in new window
ECHO STARTING 16 PROACTIVE MESSAGES
start dotnet run

PAUSE
CD ..

:: *******************************************SWAPPING BOTS!*******************************************
CD 17.multilingual-bot
set test=%CD%

ECHO.
ECHO UPDATING 17 MULTILINGUAL BOT
ECHO.

::updating the packages
call %parent%\looptest.bat
call code %test%\MultiLingualBot.csproj

::ADD IN THE TRANX KEY
set "fixFile=appsettings.json"
set "fixOld=<Your translation key here>"
set "fixNew=fca5f284e155487085f2f79ad990e9ab"
powershell -file %parent%\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
PAUSE

::start bot in new window
ECHO STARTING 17 MULTILINGUAL BOT
start dotnet run

PAUSE
CD ..

:: *******************************************SWAPPING BOTS!*******************************************
CD 18.bot-authentication
set test=%CD%

ECHO.
ECHO UPDATING 18 BOT AUTH
ECHO.

::updating the packages
call %parent%\looptest.bat
call code %test%\AuthenticationBot.csproj

::start bot in new window
ECHO GO FIX THE CONNECTION IN authenticationbOT.CS
ECHO JJAuthTest
::set "fixFile=appsettings.json"
::set "fixOld=<Your translation key here>"
::set "fixNew=fca5f284e155487085f2f79ad990e9ab"
::powershell -file %parent%\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
PAUSE
call msbot connect endpoint -n development -e http://localhost:3978/api/messages -a ***** -p *****
PAUSE

::start bot in new window
ECHO STARTING 18 BOT AUTH
ECHO ***************************************THIS MUST BE TESTED IN NGROK WITH AN ACCURATE CONNECTOR!***************************************
ECHO !***************************************!CHECK THE BOT FILE, CHECK THE CONNECTION!***************************************!
start dotnet run

PAUSE
CD ..

:: *******************************************SWAPPING BOTS!*******************************************
CD 19.custom-dialogs
set test=%CD%

ECHO.
ECHO UPDATING 19 CUSTOM DIALOGS
ECHO.

::updating the packages
call %parent%\looptest.bat
call code %test%\Custom-Dialogs.csproj

::start bot in new window
ECHO STARTING 19 CUSTOM DIALOGS
start dotnet run

PAUSE
CD ..

:: *******************************************SWAPPING BOTS!*******************************************
CD 20.qna-with-appinsights
set test=%CD%

ECHO.
ECHO UPDATING 20 qna with appinsights
ECHO.

::updating the packages
call %parent%\looptest.bat
call code %test%\QnABotAppInsights.csproj

::UPDATE THE BOT FILE
ECHO ************ PAUSED to change the bot file cuz qna msbot connect command. Delete the empty one. 
PAUSE
call msbot connect qna -n qna-with-insights-QnAMaker -k ***** --subscriptionKey ***** --endpointKey ***** --hostname https://jjqnabot.azurewebsites.net/qnamaker
CALL msbot connect appinsights -n appInsights -t Microsoft --subscriptionId ***** -r JJQnANodeBot --serviceName JJQnABot-ai -i *****
PAUSE

::start bot in new window
ECHO STARTING 20 qna with app insights
start dotnet run

PAUSE
CD ..

:: *******************************************SWAPPING BOTS!*******************************************
CD 21.luis-with-appinsights
set test=%CD%

ECHO.
ECHO UPDATING 21 luis with appinsights
ECHO.

::updating the packages
call %parent%\looptest.bat
call code %test%\LuisBotAppInsights.csproj

::UPDATE THE BOT FILE
ECHO ************ PAUSED to change the bot file cuz qna msbot connect command. Delete the empty one. 
PAUSE
CALL msbot connect luis --name LuisBot --appId ***** --version 0.1 --authoringKey ***** --subscriptionKey *****
CALL msbot connect appinsights -n appInsights -t Microsoft --subscriptionId ***** -r JJQnANodeBot --serviceName JJQnABot-ai -i *****
PAUSE

::start bot in new window
ECHO STARTING 21 luis with app insights
start dotnet run

PAUSE
CD ..

:: *******************************************SWAPPING BOTS!*******************************************
CD 22.conversation-history
set test=%CD%

ECHO.
ECHO UPDATING 22 CONVO HIST
ECHO.

::updating the packages
call %parent%\looptest.bat
call code %test%\ConversationHistory.csproj

::UPDATE THE BOT FILE
ECHO UPDATE THE BOT FILE
PAUSE
call msbot connect blob -n blobStore -t Microsoft --subscriptionId 0***** --resourceGroup JJQnANodeBot --serviceName jjqnanodebot8ac9 --connectionString DefaultEndpointsProtocol=https;AccountName=jjqnanodebot8ac9;AccountKey=*****==;EndpointSuffix=core.windows.net --container botstatestore 

::UPDATE THE CONFIGS
PAUSE
set "fixFile=Startup.cs"
set "fixOld=<STORAGE-NAME-OR-ID-FROM-BOT-FILE>"
set "fixNew=blobStore"
powershell -file %parent%\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
set "fixOld=<DEFAULT-CONTAINER>"
set "fixNew=botstatestore"
powershell -file %parent%\repl.ps1 "%fixFile%" "%fixOld%" "%fixNew%"
PAUSE

::start bot in new window
ECHO STARTING 22 CONVO HIST
start dotnet run

PAUSE
CD ..

:: *******************************************SWAPPING BOTS!*******************************************
CD 23.facebook-events
set test=%CD%

ECHO.
ECHO UPDATING 23 facebook events
ECHO.

::updating the packages
call %parent%\looptest.bat
call code %test%\Facebook-Events-Bot.csproj

::update the bot file
PAUSE
call msbot connect endpoint -n development -e http://localhost:3978/api/messages -a ***** -p *****
PAUSE
ECHO STARTING 23 facebook events
start dotnet run

PAUSE
CD ..

:: *******************************************SWAPPING BOTS!*******************************************
CD 24.bot-authentication-msgraph
set test=%CD%

ECHO.
ECHO UPDATING 24.bot-authentication-msgraph
ECHO.

::updating the packages
call %parent%\looptest.bat
call code %test%\BotAuthenticationMSGraph.csproj

ECHO GO FIX THE CONNECTION IN authenticationbOT.CS
ECHO JJAuthTest
PAUSE
call msbot connect endpoint -n development -e http://localhost:3978/api/messages -a ***** -p *****
PAUSE
ECHO STARTING 18 BOT AUTH
ECHO ***************************************THIS MUST BE TESTED IN NGROK WITH AN ACCURATE CONNECTOR!***************************************
ECHO !***************************************!CHECK THE BOT FILE, CHECK THE CONNECTION!***************************************!

::start up the bot!
ECHO STARTING 24 BOT AUTH MSGRAPH
start dotnet run

PAUSE
CD ..

:: *******************************************SWAPPING BOTS!*******************************************
ECHO BOT 30 HAS TO BE BUILT AND TESTED MANUALLY
:: *******************************************SWAPPING BOTS!*******************************************
CD 42.scaleout
set test=%CD%

ECHO.
ECHO UPDATING 42.scaleout
ECHO.

::updating the packages
call %parent%\looptest.bat
call code %test%\ScaleoutBot.csproj

::start bot in new window
ECHO STARTING 42.scaleout
start dotnet run

PAUSE
CD ..

:: *******************************************SWAPPING BOTS!*******************************************
CD 51.cafe-bot
set test=%CD%

ECHO.
ECHO UPDATING 51.cafe-bot
ECHO.

::updating the packages
call %parent%\looptest.bat
call code %test%\CafeBot.csproj

::bot file shenanigans
ECHO ************ PAUSED doublecheck the bot file (removed extra ,)
PAUSE
ECHO.
CALL msbot connect qna -n cafeFaqChitChat -k ***** --subscriptionKey ***** --endpointKey ***** --hostname https://JJtesterbot-qnahost.azurewebsites.net/qnamaker
CALL msbot connect luis --name cafeBotBookTableTurnNModel --appId ***** --version 0.1 --authoringKey ***** --subscriptionKey *****
CALL msbot connect luis --name getUserProfile --appId ***** --version 0.1 --authoringKey ***** --subscriptionKey *****
CALL msbot connect luis --name cafeDispatchModel --appId ***** --version 0.1 --authoringKey ***** --subscriptionKey *****
pause

::start bot in new window
ECHO STARTING 51.cafe-bot
start dotnet run

PAUSE
CD ..

ECHO DONE, YO!
PAUSE