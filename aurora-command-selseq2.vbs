Set WshShell = CreateObject("WScript.Shell") 

CreateObject("Wscript.Shell").Run "send-aurora-command.bat SEQID2",0
Set WshShell = Nothing