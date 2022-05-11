@echo off

REM =================================
REM intialization
REM =================================

REM launch a new cmd
REM to prevent set /p from leaving values in the command history once the script ends
if “%~1″==”nohistory” goto :nohistory
cmd /c “%~f0” nohistory
exit /b

REM if we get here we are in a new cmd shell
REM and there will be no extra options add to the command history
:nohistory

REM =================================
REM set up user interface
REM =================================

REM Set up the look of the user interface
title Multiple Choice Menu

REM light blue background white text
color 9f

REM =================================
REM display the menu
REM =================================

REM Display the menu
:menu
cls
echo.
echo Select an option:
REM some graphics characters from code page 437
echo ÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ
echo.
echo [1] Option 1
echo [2] Option 2
echo [3] Option 3
echo [4] Option 4
echo.
echo [x] Exit
echo.

REM =================================
REM handle user input
REM =================================

REM get user input

set /p input=Type option:

REM set input=%input: =%

if “%input%”==”1” goto option1
if “%input%”==”2” goto option2
if “%input%”==”3” goto option3
if “%input%”==”4” goto option4

if “%input%”==”x” goto end

REM start menu input loop again
goto menu

REM =================================
REM run menu options
REM =================================

REM =================================
REM Option 1
REM =================================
:option1
echo option1
Pause
goto menu

REM =================================
REM Option 2
REM =================================
:option2
echo option2
Pause
goto menu

REM =================================
REM Option 3
REM =================================
:option3
echo option3
Pause
goto menu

REM =================================
REM Option 4
REM =================================
:option4
echo option4
Pause
goto menu

REM =================================
REM clean up and exit
REM =================================
:end

REM clean up user interface
cls
color 07

REM exit /B ends the batch file but not the DOS cmd window
exit /B
