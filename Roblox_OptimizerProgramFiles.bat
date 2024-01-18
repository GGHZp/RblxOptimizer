:menu
@echo off
cls
mode con:cols=150 lines=40
echo.
echo Welcome To Roblox Optimizer. In this tool you can optimize your roblox easier.
echo.
echo    [ O ] Optimize Roblox     [ R ] Reinstall Roblox     [ S ] Start Roblox     [ F ] Roblox Folder     [ C ] Change ClientAppSettings
echo.
set /p c=Enter Your Input: 
if /I "%C%" EQU "O" goto OptimizeRoblox
if /I "%C%" EQU "R" goto ReinstallRoblox
if /I "%C%" EQU "S" goto StartRoblox
if /I "%C%" EQU "F" goto OpenRobloxFolder
if /I "%C%" EQU "C" goto ChangeRobloxClientAppSettingsFile
goto menu






:ChangeRobloxClientAppSettingsFile
cls
echo.
echo Changing ClientAppSettings...












for /f "delims=" %%i in ('dir /s /b "C:\Program Files (x86)\Roblox\RobloxPlayerBeta.exe"') do (
    rem ClientSettings
    cls
    cd /d "%%~dpi" > NUL 2>&1
    goto ClientSettingsSection
)

goto menu














:OpenRobloxFolder
cls
echo.
echo Scanning  Your Drive...

for /f "delims=" %%i in ('dir /s /b "C:\Program Files (x86)\Roblox\RobloxPlayerBeta.exe"') do (

start explorer.exe "%%~dpi"
	goto menu


)

	goto menu















:StartRoblox
cls
echo.
echo Starting Roblox...




@echo off
setlocal enabledelayedexpansion

for /f "delims=" %%i in ('dir /s /b "C:\Program Files (x86)\Roblox\RobloxPlayerBeta.exe"') do (
    start "" "%%i"
)

goto menu















:ReinstallRoblox
cls
echo.
echo Getting Ready...
timeout /t 2 /nobreak>Nul

for /f "delims=" %%i in ('dir /s /b "C:\Program Files (x86)\Roblox\RobloxPlayerBeta.exe"') do (
    rmdir /q /s "%%~dpi" > NUL 2>&1
	



)
    rmdir /q /s "C:\ProgramData\Roblox-Player" > NUL 2>&1
    rmdir /q /s "C:\ProgramData\Roblox" > NUL 2>&1
    rmdir /q /s "%localappdata%\Roblox" > NUL 2>&1

powershell -command Invoke-WebRequest -Uri "https://www.roblox.com/download/client" -OutFile %temp%\RobloxPlayerInstaller.exe

goto StartReinstallation




:StartReinstallation
cls
echo.
echo Reinstalling...

timeout /t 2 /nobreak>nul

start /min /wait %temp%\RobloxPlayerInstaller.exe

taskkill /f /im RobloxPlayerBeta.exe > NUL 2>&1

goto menu
















:OptimizeRoblox
cls
echo.
echo Optimizing Roblox...

rem  Change Derictory To Roblox Folder And Disable Fullscreen Optimization
    @echo off
    for /f "delims=" %%i in ('dir /s /b "C:\Program Files (x86)\Roblox\RobloxPlayerBeta.exe"') do (
    cd /d "%%~dpi"
    REG ADD "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%%~dpiRobloxPlayerBeta.exe" /t REG_SZ /d "~ DISABLEDXMAXIMIZEDWINDOWEDMODE" /f > NUL 2>&1
)


Rem Clean Up Textures
rmdir /q /s "PlatformContent\pc\textures\brick" > NUL 2>&1
rmdir /q /s "PlatformContent\pc\textures\cobblestone" > NUL 2>&1
rmdir /q /s "PlatformContent\pc\textures\concrete" > NUL 2>&1
rmdir /q /s "PlatformContent\pc\textures\corrodedmetal" > NUL 2>&1
rmdir /q /s "PlatformContent\pc\textures\diamondplate" > NUL 2>&1
rmdir /q /s "PlatformContent\pc\textures\fabric" > NUL 2>&1
rmdir /q /s "PlatformContent\pc\textures\foil" > NUL 2>&1
rmdir /q /s "PlatformContent\pc\textures\glass" > NUL 2>&1
rmdir /q /s "PlatformContent\pc\textures\granite" > NUL 2>&1
rmdir /q /s "PlatformContent\pc\textures\grass" > NUL 2>&1
rmdir /q /s "PlatformContent\pc\textures\ice" > NUL 2>&1
rmdir /q /s "PlatformContent\pc\textures\marble" > NUL 2>&1
rmdir /q /s "PlatformContent\pc\textures\metal" > NUL 2>&1
rmdir /q /s "PlatformContent\pc\textures\pebble" > NUL 2>&1
rmdir /q /s "PlatformContent\pc\textures\plastic" > NUL 2>&1
rmdir /q /s "PlatformContent\pc\textures\sand" > NUL 2>&1
rmdir /q /s "PlatformContent\pc\textures\slate" > NUL 2>&1
rmdir /q /s "PlatformContent\pc\textures\water" > NUL 2>&1
rmdir /q /s "PlatformContent\pc\textures\wood" > NUL 2>&1
rmdir /q /s "PlatformContent\pc\textures\woodplanks" > NUL 2>&1

del /q /s  "PlatformContent\pc\textures\brdfLUT.dds" > NUL 2>&1
del /q /s  "PlatformContent\pc\textures\studs.dds" > NUL 2>&1
del /q /s  "PlatformContent\pc\textures\wangIndex.dds" > NUL 2>&1

del /q /s /f "PlatformContent\pc\textures\sky\indoor512_bk.tex" > NUL 2>&1
del /q /s /f "PlatformContent\pc\textures\sky\indoor512_dn.tex" > NUL 2>&1
del /q /s /f "PlatformContent\pc\textures\sky\indoor512_ft.tex" > NUL 2>&1
del /q /s /f "PlatformContent\pc\textures\sky\indoor512_lf.tex" > NUL 2>&1
del /q /s /f "PlatformContent\pc\textures\sky\indoor512_rt.tex" > NUL 2>&1
del /q /s /f "PlatformContent\pc\textures\sky\indoor512_up.tex" > NUL 2>&1



del /q /s /f "PlatformContent\pc\terrain\diffuse.dds" > NUL 2>&1
del /q /s /f "PlatformContent\pc\terrain\diffusearray.dds" > NUL 2>&1
del /q /s /f "PlatformContent\pc\terrain\materials2022.json" > NUL 2>&1
del /q /s /f "PlatformContent\pc\terrain\normal.dds" > NUL 2>&1
del /q /s /f "PlatformContent\pc\terrain\normalarray.dds" > NUL 2>&1
del /q /s /f "PlatformContent\pc\terrain\reflection.dds" > NUL 2>&1
del /q /s /f "PlatformContent\pc\terrain\reflectionarray.dds" > NUL 2>&1


rmdir /q /s "ExtraContent\textures\sky" > NUL 2>&1
rmdir /q /s "content\sky" > NUL 2>&1





del /q /s /f "shaders\keepme" > NUL 2>&1
del /q /s /f "shaders\shaders_d3d10.pack" > NUL 2>&1
del /q /s /f "shaders\shaders_d3d10_1.pack" > NUL 2>&1
del /q /s /f "shaders\shaders_glsl.pack" > NUL 2>&1
del /q /s /f "shaders\shaders_vulkan_desktop.pack" > NUL 2>&1







rmdir /q /s "content\textures\ui\Settings\MenuBarAssets" > NUL 2>&1
rmdir /q /s "content\textures\ui\Settings\MenuBarIcons" > NUL 2>&1


del /q /s /f "content\textures\Cursors\KeyboardMouse\ArrowCursor.png" > NUL 2>&1
del /q /s /f "content\textures\Cursors\KeyboardMouse\ArrowFarCursor.png" > NUL 2>&1

xcopy /y "content\textures\ArrowCursor.png" "%temp%" > NUL 2>&1
xcopy /y "content\textures\ArrowCursorDecalDrag.png" "%temp%" > NUL 2>&1
xcopy /y "content\textures\ArrowFarCursor.png" "%temp%" > NUL 2>&1




del /q /f "content\textures\*.png" > NUL 2>&1


move /y "%temp%\ArrowCursor.png" "content\textures\Cursors\KeyboardMouse"
move /y "%temp%\ArrowCursorDecalDrag.png" "content\textures\Cursors\KeyboardMouse"
move /y "%temp%\ArrowFarCursor.png" "content\textures\Cursors\KeyboardMouse"









goto ClientSettingsSection






:ClientSettingsSection

rem ClientSettings
cls
echo.
echo ClientSettings File. Please Choose One Blow.
echo.
echo     [ A ] No Texture    [ E ] Texture On    [ V ] Texture On + Increased FPS    [ O ] No Texture + Increase FPS    [ X ] Skip
echo.
set /p c=Enter Your Input: 
if /I "%C%" EQU "A" goto NoTextureClientSettings
if /I "%C%" EQU "E" goto TextureOnClientSettings
if /I "%C%" EQU "V" goto TextureOnIncreasedFPS
if /I "%C%" EQU "O" goto NoTexutreIncreaseFPS
if /I "%C%" EQU "S" goto menu
goto ClientSettingsSection




:NoTexutreIncreaseFPS
cls
echo.
echo Adding ClientSettings...
timeout /t 2 /nobreak>Nul
echo.
rmdir /q /s "ClientSettings" > NUL 2>&1
mkdir ClientSettings > NUL 2>&1

powershell -command Invoke-WebRequest -Uri "https://raw.githubusercontent.com/GGHZp/Roblox-Alt-Enter-Files/main/ClientAppSettings4.json" -OutFile ClientSettings\ClientAppSettings.json
goto menu




:TextureOnIncreasedFPS
cls
echo.
echo Adding ClientSettings...
timeout /t 2 /nobreak>Nul
echo.
rmdir /q /s "ClientSettings" > NUL 2>&1
mkdir ClientSettings > NUL 2>&1

powershell -command Invoke-WebRequest -Uri "https://raw.githubusercontent.com/GGHZp/Roblox-Alt-Enter-Files/main/ClientAppSettings3.json" -OutFile ClientSettings\ClientAppSettings.json
goto menu





:TextureOnClientSettings
cls
echo.
echo Adding ClientSettings...
timeout /t 2 /nobreak>Nul
echo.
rmdir /q /s "ClientSettings" > NUL 2>&1
mkdir ClientSettings > NUL 2>&1

powershell -command Invoke-WebRequest -Uri "https://raw.githubusercontent.com/GGHZp/Roblox-Alt-Enter-Files/main/ClientAppSettings2.json" -OutFile ClientSettings\ClientAppSettings.json
goto menu




:NoTextureClientSettings
cls
echo.
echo Adding ClientSettings...
timeout /t 2 /nobreak>Nul
echo.
rmdir /q /s "ClientSettings" > NUL 2>&1
mkdir ClientSettings > NUL 2>&1

powershell -command Invoke-WebRequest -Uri "https://raw.githubusercontent.com/GGHZp/Roblox-Alt-Enter-Files/main/ClientAppSettings.json" -OutFile ClientSettings\ClientAppSettings.json
goto menu


