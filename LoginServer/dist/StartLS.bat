@echo off
color 2f
title AlternateCore LS International Version 3.0 
:start

SET LANGUAGE=DE
SET SHOWLANGUAGE=English
echo.
echo.
ECHO  Please Selet The Language:
echo.
ECHO  1.English    2.German
echo.
echo.
SET /P Ares=Type 1, 2 or 3 then press ENTER:
IF %Ares%==1 SET LANGUAGE=EN && SET SHOWLANGUAGE=English
IF %Ares%==2 SET LANGUAGE=DE && SET SHOWLANGUAGE=German

CLS
echo.
echo You have chosen the %SHOWLANGUAGE% Language.


echo AlternateCore 3.0 Login Server.
echo.
REM -------------------------------------
REM Default parameters for a basic server.
java -Xms8m -Xmx32m -Xbootclasspath/p:./libs/jsr166.jar -cp ./libs/*;AC-Login.jar loginserver.LoginServer %LANGUAGE%
REM
REM -------------------------------------

SET CLASSPATH=%OLDCLASSPATH%


if ERRORLEVEL 1 goto error
goto end
:error
echo.
echo Login Server Terminated Abnormaly, Please Verify Your Files.
echo.
:end
echo.
echo Login Server Terminated.
echo.
pause
