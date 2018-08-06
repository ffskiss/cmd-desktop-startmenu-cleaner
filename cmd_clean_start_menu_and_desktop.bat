@echo off

REM NAME:		Clean Start Menu & Desktop
REM DATE:		14/04/2018
REM VERSION:	1.0
REM DEVELOPER:	ffsKISS
REM SITE:		https://pastebin.com/XeCaEf65


REM ALL USERS %SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\
REM CURRENT USER %USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\
REM IF EXIST "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\FileZilla FTP Client\FileZilla.lnk" (mkdir "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Utilities\FileZilla\") 
REM IF EXIST "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\FileZilla FTP Client\FileZilla.lnk" (move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\FileZilla FTP Client\FileZilla.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Utilities\FileZilla\") 
REM del /q /f "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\VeraCrypt\Uninstall VeraCrypt.lnk"

REM goto check_Permissions
REM :check_Permissions
REM    echo Administrative permissions required. Detecting permissions...
REM    net session >nul 2>&1
REM    if %errorLevel% == 0 (
REM       echo Success: Administrative permissions confirmed.
REM    ) else (
REM        echo Failure: Close and please run as Administrator.
REM		Pause
REM		Exit
REM    )
REM   pause >nul
	
REM CREATE START MENU FOLDERS
mkdir "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Graphics\"
mkdir "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Internet\"
mkdir "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Office\"
mkdir "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Programming\"
mkdir "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Sound & Video\"
mkdir "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Games\"
mkdir "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\"
mkdir "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Driver Software\"
mkdir "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\System Tools\"
mkdir "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Utilities\"
mkdir "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Security\"
mkdir "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Server\"
mkdir "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Windows\"

REM INTERNET
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Mozilla Firefox.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Internet\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Firefox.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Internet\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Opera browser.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Internet\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\qBittorrent\qBittorrent.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Internet\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Google Chrome.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Internet\"
move "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\OneDrive.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Internet\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Free Download Manager\Free Download Manager.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Internet\"

REM GRAPHICS
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Inkscape 0.92.1\Inkscape 0.92.1.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Graphics\Inkscape.lnk"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Krita\Krita (x64).lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Graphics\Krita.lnk"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Krita\Krita (x32).lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Graphics\Krita.lnk"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\GIMP 2.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Graphics\GIMP.lnk"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\paint.net.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Graphics\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Affinity Designer Trial.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Graphics\Affinity Designer.lnk"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Affinity Photo Trial.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Graphics\Affinity Photo.lnk"
xcopy /e /y "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\IrfanView" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Graphics\IrfanView\"

REM OFFICE
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\PDFCreator\PDFCreator.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Office\"
xcopy /e /y "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\LibreOffice 5.4" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Office\LibreOffice 5.4\"
xcopy /e /y "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\WPS Office" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Office\WPS Office\"

REM PROGRAMMING
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Notepad++\Notepad++.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Programming\"
xcopy /e /y "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\AutoIt v3" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Programming\AutoIt v3\"
xcopy /e /y "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\AutoHotkey" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Programming\AutoHotkey\"

REM GAMES
IF EXIST "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk" (mkdir "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Games\Chat\") 
IF EXIST "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk" (move "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Games\Chat\") 
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Steam\Steam.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Games\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Battle.net\Battle.net.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Games\"
move "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Twitch.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Games\"
move "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Ubisoft\Uplay\Uplay.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Gamesrograms\Games\"
xcopy /e /y "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\LaunchBox" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Games\LaunchBox\"
xcopy /e /y "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Theme Hospital [GOG.com]" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Games\GOG.com\Theme Hospital\"
xcopy /e /y "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\CorsixTH" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Games\GOG.com\Theme Hospital\CorsixTH\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\World of Warcraft Beta\World of Warcraft Beta.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Games\"
move "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\WiiU_USB_Helper\WiiU_USB_Helper.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Games\WiiU USB Helper.lnk"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\PS4 Remote Play.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Games\"

REM SOUND & VIDEO
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Daum\PotPlayer 64 bit\PotPlayer 64 bit.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Sound & Video\PotPlayer.lnk"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Daum\PotPlayer 32 bit\PotPlayer 64 bit.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Sound & Video\PotPlayer.lnk"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Kodi\Kodi.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Sound & Video\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Mp3tag\Mp3tag.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Sound & Video\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Windows Media Player.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Sound & Video\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\VideoLAN\VLC media player.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Sound & Video\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\iTunes\iTunes.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Sound & Video\"
move "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\MediaInfo.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Sound & Video\"
xcopy /e /y "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\FileBot" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Sound & Video\FileBot\"
move "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Spotify.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Sound & Video\"

REM Administration
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Settings.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\ChocolateyGUI\ChocolateyGUI.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Chocolatey GUI.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\"
move "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Settings.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\"

REM System Tools
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\GPU-Z.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\System Tools\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Driver Booster 5\Driver Booster 5.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\System Tools\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\CCleaner\CCleaner.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\System Tools\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\CPUID\CPU-Z\CPU-Z.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\System Tools\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\CPUID\HWMonitor\HWMonitor.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\System Tools\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Recuva\Recuva.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\System Tools\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Revo Uninstaller\Revo Uninstaller.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\System Tools\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Speccy\Speccy.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\System Tools\"
move "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\SpeedFan\SpeedFan.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\System Tools\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Macrium\Reflect\Macrium Reflect.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\System Tools\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Advanced SystemCare\Advanced SystemCare 11.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\System Tools\"

REM Utilities
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\7-Zip\7-Zip File Manager.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Utilities\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\FileZilla FTP Client\FileZilla.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Utilities\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\2BrightSparks\SyncBackFree\SyncBack Free.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Utilities\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\7-Zip\7-Zip File Manager.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Utilities\"
REM move "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\WinDirStat\WinDirStat.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Utilities\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\WinDirStat\WinDirStat.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Utilities\"
move "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\f.lux.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Utilities\"
xcopy /e /y "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\RealVNC" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Utilities\RealVNC\"
xcopy /e /y "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Classic Shell" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Utilities\Classic Shell\"
xcopy /e /y "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\VMware" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Utilities\VMware\"
xcopy /e /y "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Oracle VM VirtualBox" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Utilities\Oracle VM VirtualBox\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Image Writer\Win32DiskImager.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Utilities\"
xcopy /e /y "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\PuTTY (64-bit)" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Utilities\PuTTY (64-bit)\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\WinRAR\WinRAR.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Utilities\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\adbLink.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Utilities\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\WinSCP.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Utilities\"
move ""%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\SyncBack Free.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Utilities\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\2BrightSparks\SyncBackPro x64\SyncBack Pro.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Utilities\"

REM Security
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Malwarebytes\Malwarebytes.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Security\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Avast Free Antivirus.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Security\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Avira\Antivirus\Start Avira Antivirus.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Security\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Kaspersky Total Security\Kaspersky Total Security.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Security\"
xcopy /e /y "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\VeraCrypt" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Security\VeraCrypt\"

IF EXIST "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\SUPERAntiSpyware\SUPERAntiSpyware Free Edition.lnk" (mkdir "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Security\SUPERAntiSpyware\") 
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\SUPERAntiSpyware\SUPERAntiSpyware Free Edition.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Security\SUPERAntiSpyware\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\SUPERAntiSpyware\SUPERAntiSpyware Alternate Start.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Security\SUPERAntiSpyware\"
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Spybot Anti-Beacon\Spybot Anti-Beacon.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Security\"

REM Driver Software
xcopy /e /y "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\NVIDIA Corporation" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Driver Software\NVIDIA Corporation\"
xcopy /e /y "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Razer" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Driver Software\Razer\"
xcopy /e /y "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\AMD" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Driver Software\AMD\"
xcopy /e /y "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Intel" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Driver Software\Intel\"
xcopy /e /y "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\UtechSmart 16400DPI VENUS Gaming Mouse" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Driver Software\UtechSmart 16400DPI VENUS Gaming Mouse\"

REM Server
move "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Plex Media Server\Plex Media Server.lnk" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Server\"
xcopy /e /y "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\XAMPP" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Server\XAMPP\"

REM Windows
xcopy /e /y "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Accessories" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Windows\Windows Accessories\"
xcopy /e /y "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Accessories" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Windows\Windows Accessories\"
xcopy /e /y "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Windows PowerShell" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Windows\Windows PowerShell\"
xcopy /e /y "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Windows PowerShell" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Windows\Windows PowerShell\"
xcopy /e /y "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Accessibility" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Windows\Windows Ease of Access\"
xcopy /e /y "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Accessibility" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Windows\Windows Ease of Access\"
xcopy /e /y "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\System Tools" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Windows\Windows System\"
xcopy /e /y "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\System Tools" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Windows\Windows System\"
xcopy /e /y "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administrative Tools" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Windows\Windows Administrative Tools\"
xcopy /e /y "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Administrative Tools" "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Administration\Windows\Windows Administrative Tools\"

REM REMOVE FOLDERS ALL USERS
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Accessories\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Windows PowerShell\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Accessibility\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\System Tools\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Driver Booster 5\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\7-Zip\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\AutoIt v3\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\CCleaner\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\ChocolateyGUI\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Classic Shell\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\CPUID\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Daum\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\LibreOffice 5.4\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\FileZilla FTP Client\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Inkscape 0.92.1\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Java\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Kodi\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Malwarebytes\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Mp3tag\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Notepad++\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\NVIDIA Corporation\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\PDFCreator\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\RealVNC\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Recuva\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Revo Uninstaller\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Speccy\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Steam\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\VideoLAN\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\2BrightSparks\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\qBittorrent\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Plex Media Server\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\XAMPP\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\VMware\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\AutoHotkey\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Krita\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\iTunes\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Avira\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\SUPERAntiSpyware\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Maintenance\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Battle.net\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Oracle VM VirtualBox\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Kaspersky Total Security\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\VeraCrypt\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Image Writer\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\WinDirStat\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Free Download Manager\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Macrium\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\PuTTY (64-bit)\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Razer\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Spybot Anti-Beacon\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\IrfanView\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Theme Hospital [GOG.com]\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\WinRAR\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\World of Warcraft Beta\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Intel\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Dolphin\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\UtechSmart 16400DPI VENUS Gaming Mouse\"
rmdir /s /q "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Advanced SystemCare\"

REM REMOVE FOLDERS CURRENT USER
rmdir /s /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Accessories\"
rmdir /s /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Windows PowerShell\"
rmdir /s /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Accessibility\"
rmdir /s /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\System Tools\"
rmdir /s /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\LaunchBox\"
rmdir /s /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Ubisoft\"
rmdir /s /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\FileBot\"
rmdir /s /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\SpeedFan\"
rmdir /s /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\WinDirStat\"
rmdir /s /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\"
rmdir /s /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Administrative Tools\"
rmdir /s /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Maintenance\"
rmdir /s /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\AMD\"
rmdir /s /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\CorsixTH\"
rmdir /s /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\WinRAR\
rmdir /s /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\WiiU_USB_Helper\
rmdir /s /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\WPS Office\

REM DELETE ALL DESKTOP
del "%SYSTEMDRIVE%\Users\Public\Desktop\Avast Free Antivirus.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\COMODO Firewall.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\FileZilla.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\Glary Utilities 5.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\Google Chrome.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\ImgBurn.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\IrfanView.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\Malwarebytes.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\Media Player Classic Home Cinema.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\Mozilla Firefox.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\Notepad++.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\Opera.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\PDFCreator.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\SumatraPDF.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\Unchecky.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\TeamViewer 10.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\VLC media player.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\VNC Viewer.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\WinDirStat.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\KeePass 2.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\CCleaner.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\Steam.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\SUPERAntiSpyware Free Edition.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\qBittorrent.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\Skype.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\LibreOffice 5.0.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\Picasa 3.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\WinRaR.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\COMODO Firewall.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\Defraggler.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\CPUID HWMonitor.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\Opera Browser.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\Speccy.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\Mp3tag.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\Recuva.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\CPUID CPU-Z.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\GPU-Z.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\Driver Booster 5.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\Inkscape*.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\FileZilla Server Interface.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\Revo Uninstaller.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\Avira.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\iTunes.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\Krita.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\GIMP 2.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\paint.net.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\VMware Workstation Pro.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\VeraCrypt.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\Safe Money.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\Oracle VM VirtualBox.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\Kaspersky Total Security.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\Battle.net.lnk"
del "%SYSTEMDRIVE%\Users\Public\Desktop\Advanced SystemCare 11.lnk"

REM DELETE USERS DESKTOP
del "%USERPROFILE%\Desktop\Auslogics DiskDefrag.lnk"
del "%USERPROFILE%\Desktop\Microsoft OneDrive.lnk"
del "%USERPROFILE%\Desktop\Revo Uninstaller.lnk"
del "%USERPROFILE%\Desktop\Spotify.lnk"
del "%USERPROFILE%\Desktop\SpeedFan.lnk"
del "%USERPROFILE%\Desktop\WinDirStat.lnk"
del "%USERPROFILE%\Desktop\PotPlayer 64 bit.lnk"
del "%USERPROFILE%\Desktop\Discord.lnk"
del "%USERPROFILE%\Desktop\Twitch.lnk"
del "%USERPROFILE%\Desktop\Filebot.lnk"
del "%USERPROFILE%\Desktop\AMD Ryzen Master.lnk"
del "%USERPROFILE%\Desktop\Macrium Reflect.lnk"
del "%USERPROFILE%\Desktop\WPS Presentation.lnk"
del "%USERPROFILE%\Desktop\WPS Spreadsheets.lnk"
del "%USERPROFILE%\Desktop\WPS Writer.lnk"
del "%USERPROFILE%\Desktop\GitHub Desktop.lnk"
del "%USERPROFILE%\Desktop\Nox.lnk"
del "%USERPROFILE%\Desktop\Multi-Drive.lnk"

REM DELETE USER TASKBAR
del "%AppData%\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\Advanced SystemCare 11.lnk"
del "%AppData%\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\Driver Booster.lnk"

exit