:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Script made by ItsSuperPlayz                                        ::
:: Modifying or redistributing the script without credit is prohibited ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

@echo off&title WSU&setlocal enabledelayedexpansion
for /f "tokens=4 delims=. " %%a in ('ver') do if %%a neq 10 echo Sorry, WSU is incompatible with your Windows version. Please use Windows 10/11 to continue.&pause>nul&exit
for /f %%a in ('echo prompt $E ^| cmd') do set "esc=%%a"
net stop beep>nul 2>nul&set specsloaded=0
:prompt
cls&echo Windows Scripts Utility&echo.&echo    [1] Chris Titus Tech^'s Windows Utility&echo    [2] Microsoft Activation Scripts&echo    [3] Windows10Debloater&echo    [4] Windows11Debloat&echo    [!esc![92mS!esc![0m] System specifications&echo    [!esc![92m0!esc![0m] Quit&echo.&echo !esc![93mChoose an option using your keyboard...!esc![0m&choice /c 1234S0 /n&cls&goto optn!errorlevel!
:optn1
set link=https://github.com/ChrisTitusTech/winutil&set command=start /wait powershell -Command "Start-Process -Verb RunAs powershell '-NoExit -ExecutionPolicy Bypass -Command irm https://christitus.com/win|iex'"&goto exec
:optn2
set link=https://github.com/massgravel/Microsoft-Activation-Scripts&set command=start /wait powershell -command "irm https://get.activated.win|iex"&goto exec
:optn3
set link=https://github.com/Sycnex/Windows10Debloater&set command=start /wait powershell -command "iwr -useb https://git.io/debloat|iex"&goto exec
:optn4
set link=https://github.com/Raphire/Win11Debloat&set command=start /wait powershell -command "irm https://raw.githubusercontent.com/Raphire/Win11Debloat/master/Get.ps1|iex"&goto exec
:optn5
cls&(if %specsloaded%==0 (echo ^> Please wait, this may take up to a minute...&(for /f "tokens=*" %%a in ('powershell -c "(get-ciminstance -classname win32_operatingsystem).caption"') do set os=%%a)&(if not defined os set os=!esc![91mN/A!esc![0m)&(for /f "tokens=*" %%a in ('powershell -c "(get-ciminstance -classname win32_operatingsystem).osarchitecture"') do set arch=%%a)&(if not defined arch set arch=!esc![91mN/A!esc![0m)&(for /f "tokens=*" %%a in ('powershell -c "(get-ciminstance -classname win32_processor).name"') do set cpu=%%a)&(if not defined cpu set cpu=!esc![91mN/A!esc![0m)&(for /f "tokens=*" %%a in ('powershell -c "(get-ciminstance -classname win32_processor).numberofcores"') do set cores=%%a)&(if not defined cores set cores=!esc![91mN/A!esc![0m)&(for /f "tokens=*" %%a in ('powershell -c "(get-ciminstance -classname win32_processor).threadcount"') do set threads=%%a)&(if not defined threads set threads=!esc![91mN/A!esc![0m)&(for /f "tokens=*" %%a in ('powershell -c "(get-ciminstance -classname win32_videocontroller).name"') do set gpu=%%a)&(if not defined gpu set gpu=!esc![91mN/A!esc![0m)&(for /f "tokens=*" %%a in ('powershell -c "(Get-CimInstance -ClassName Win32_ComputerSystem).TotalPhysicalMemory / 1GB"') do set mem=%%a)&(if not defined mem set mem=!esc![91mN/A!esc![0m)&set specsloaded=1))&cls&echo OS       : !arch! !os!&echo Processor: !cpu! (!cores!C/!threads!T)&echo Graphics : !gpu!&echo Memory   : !mem! GB&echo.&echo !esc![93mPress any key to go back...!esc![0m&pause>nul&goto prompt
:optn6
exit
:exec
echo ^> !esc![96m%link%!esc![0m&call :connection&echo ^> Executing script...&%command% >nul 2>nul&echo ^> The script has exited.&echo.&echo !esc![93mPress any key to go back...!esc![0m&pause>nul&goto prompt
:connection
echo ^> Checking internet connection...&ping google.com -n 1 >nul&if !errorlevel! neq 0 (echo ^> !esc![91mIt looks like you don^'t have an internet connection. Please connect to the internet and try again.!esc![0m&echo.&echo !esc![93mPress any key to go back...!esc![0m&pause>nul&goto prompt) else echo ^> !esc![92mConnection check passed^^!!esc![0m