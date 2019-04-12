Set WshShell = CreateObject("WScript.Shell") 
CreateObject("Wscript.Shell").Run "send-aurora-command.bat PREVSEQ",0
Set WshShell = Nothing