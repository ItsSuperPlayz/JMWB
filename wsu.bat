:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Script made by ItsSuperPlayz                                        ::
:: Modifying or redistributing the script without credit is prohibited ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

@echo off&title WSU&setlocal enabledelayedexpansion
for /f "tokens=4 delims=. " %%a in ('ver') do if %%a neq 10 echo Sorry, WSU is not supported on your Windows version. Please use Windows 10/11 to continue.&pause>nul&exit
for /f %%a in ('echo prompt $E ^| cmd') do set "esc=%%a"
net stop beep>nul 2>nul
:selector
cls&echo Windows Scripts Utility (build 092024)&echo.&echo    [1] Chris Titus Tech^'s Windows Utility&echo    [2] Microsoft Activation Scripts&echo    [3] Windows10Debloater&echo    [4] Windows11Debloat&echo    [!esc![92m0!esc![0m] Quit&echo.&echo !esc![93mChoose an option using your keyboard...!esc![0m&choice /c 12340 /n /cs&cls&goto optn!errorlevel!
:optn1
echo !esc![30m!esc![43mThis script can be found at https://github.com/ChrisTitusTech/winutil!esc![0m&call :checkconnection&echo ^> Executing script...&start /wait powershell -Command "Start-Process -Verb RunAs powershell '-NoExit -ExecutionPolicy Bypass -Command irm https://christitus.com/win|iex'" 2>nul&echo ^> The script has exited.&echo.&echo !esc![93mPress any key to go back...!esc![0m&pause>nul&goto selector
:optn2
echo !esc![30m!esc![43mThis script can be found at https://github.com/massgravel/Microsoft-Activation-Scripts!esc![0m&call :checkconnection&echo ^> Executing script...&start /wait powershell -command "irm https://massgrave.dev/get|iex" 2>nul&echo ^> The script has exited.&echo.&echo !esc![93mPress any key to go back...!esc![0m&pause>nul&goto selector
:optn3
echo !esc![30m!esc![43mThis script can be found at https://github.com/Sycnex/Windows10Debloater!esc![0m&call :checkconnection&echo ^> Executing script...&start /wait powershell -command "iwr -useb https://git.io/debloat|iex" 2>nul&echo ^> The script has exited.&echo.&echo !esc![93mPress any key to go back...!esc![0m&pause>nul&goto selector
:optn4
echo !esc![30m!esc![43mThis script can be found at https://github.com/Raphire/Win11Debloat!esc![0m&call :checkconnection&echo ^> Executing script...&start /wait powershell -command "irm https://raw.githubusercontent.com/Raphire/Win11Debloat/master/Get.ps1|iex" 2>nul&echo ^> The script has exited.&echo.&echo !esc![93mPress any key to go back...!esc![0m&pause>nul&goto selector
:optn5
exit
:checkconnection
echo.&echo ^> Checking internet connection...&ping google.com -n 1 >nul&if !errorlevel! neq 0 (echo !esc![91m^> It looks like you don^'t have an internet connection. Please connect to the internet and try again.!esc![0m&echo.&echo.&echo !esc![93mPress any key to go back...!esc![0m&pause>nul&goto selector) else echo ^> !esc![92mConnection check passed^^!!esc![0m