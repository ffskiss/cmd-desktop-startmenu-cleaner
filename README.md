# cmd-desktop-startmenu-cleaner

BAT/CMD file to remove desktop icons and to rearrange the start menu.  The below folders will be created and the shortcuts will be moved into the folders, the original folder will be deleted, any other folders or shortcuts not in the list will remain. 

REM CREATE START MENU FOLDERS
------------------------------
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
