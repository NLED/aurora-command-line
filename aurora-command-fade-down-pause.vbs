Set WshShell = CreateObject("WScript.Shell") 
CreateObject("Wscript.Shell").Run "send-aurora-command.bat FADEDOWN",0
Set WshShell = Nothing