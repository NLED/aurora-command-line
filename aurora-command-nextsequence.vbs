Set WshShell = CreateObject("WScript.Shell") 

CreateObject("Wscript.Shell").Run "send-aurora-command.bat NEXTSEQ",0
Set WshShell = Nothing