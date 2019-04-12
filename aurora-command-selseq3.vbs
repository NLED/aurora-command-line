Set WshShell = CreateObject("WScript.Shell") 

CreateObject("Wscript.Shell").Run "send-aurora-command.bat SEQID3",0
Set WshShell = Nothing