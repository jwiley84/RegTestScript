<<<<<<< HEAD
@ECHO OFF

set "version=4.2.2"
set "source=https://botbuilder.myget.org/F/botbuilder-v4-dotnet-daily/api/v3/index.json"

ECHO.
::updating the packages
call dotnet add package Microsoft.Bot.Schema --version %version% 
ECHO.
ECHO #*#*#
ECHO.
call dotnet add package Microsoft.Bot.Connector --version %version% 
ECHO.
ECHO #*#*#
ECHO.
call dotnet add package Microsoft.Bot.Configuration --version %version% 
ECHO.
ECHO #*#*#
ECHO.
call dotnet add package Microsoft.Bot.Builder --version %version% 
ECHO.
ECHO #*#*#
ECHO.
call dotnet add package Microsoft.Bot.Builder.Integration.AspNet.Core --version %version% 
ECHO.
ECHO #*#*#
ECHO.
call dotnet add package Microsoft.Bot.Builder.Dialogs --version %version% 
ECHO.
ECHO #*#*#
ECHO.
call dotnet add package Microsoft.Bot.Builder.Azure --version %version% 
ECHO.
ECHO #*#*#
ECHO.
call dotnet add package Microsoft.Bot.Builder.AI.Luis --version %version% 
ECHO.
ECHO #*#*#
ECHO.
call dotnet add package Microsoft.Bot.Builder.AI.QnA --version %version% 
ECHO.
ECHO #*#*#
ECHO.

ECHO DONE, YO!
=======
@ECHO OFF

set "version=4.2.2"
set "source=https://botbuilder.myget.org/F/botbuilder-v4-dotnet-daily/api/v3/index.json"

ECHO.
::updating the packages
call dotnet add package Microsoft.Bot.Schema --version %version% 
ECHO.
ECHO #*#*#
ECHO.
call dotnet add package Microsoft.Bot.Connector --version %version% 
ECHO.
ECHO #*#*#
ECHO.
call dotnet add package Microsoft.Bot.Configuration --version %version% 
ECHO.
ECHO #*#*#
ECHO.
call dotnet add package Microsoft.Bot.Builder --version %version% 
ECHO.
ECHO #*#*#
ECHO.
call dotnet add package Microsoft.Bot.Builder.Integration.AspNet.Core --version %version% 
ECHO.
ECHO #*#*#
ECHO.
call dotnet add package Microsoft.Bot.Builder.Dialogs --version %version% 
ECHO.
ECHO #*#*#
ECHO.
call dotnet add package Microsoft.Bot.Builder.Azure --version %version% 
ECHO.
ECHO #*#*#
ECHO.
call dotnet add package Microsoft.Bot.Builder.AI.Luis --version %version% 
ECHO.
ECHO #*#*#
ECHO.
call dotnet add package Microsoft.Bot.Builder.AI.QnA --version %version% 
ECHO.
ECHO #*#*#
ECHO.

ECHO DONE, YO!
>>>>>>> 730b7aea23457cc0044f4ea70d3184b0fff4d3f6
PAUSE