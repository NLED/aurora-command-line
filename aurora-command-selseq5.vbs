Set WshShell = CreateObject("WScript.Shell") 

CreateObject("Wscript.Shell").Run "send-aurora-command.bat SEQID5",0
Set WshShell = Nothing