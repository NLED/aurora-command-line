Set WshShell = CreateObject("WScript.Shell") 
CreateObject("Wscript.Shell").Run "send-aurora-command.bat PAUSETOG",0
Set WshShell = Nothing