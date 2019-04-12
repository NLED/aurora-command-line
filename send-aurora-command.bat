@echo off 
SET /p userCom=<com.txt
SET /p userBaud=<baud.txt

rem I suspect this may slow down the command execution a 
MODE %userCom% BAUD=%userBaud% PARITY=n DATA=8

rem Checks if it was unable to find the serial port
IF NOT ERRORLEVEL 0 (
ECHO Serial Port Not Found, check your device manager and edit com.txt
PAUSE
EXIT
)

IF  [%1]==[] (  
ECHO Argument not passed
PAUSE
)

ECHO Argument is defined as %1

rem commands have to send as HEX values, not characters, no easier way to do it
rem sends the string without any line/carriage returns, which echo does
rem type nled-cmd-request.hex >\\.\%userCom% - Also works, but not required

IF %1==PAUSETOG (
 SET /p x="NLED11nled99" <nul >\\.\%userCom% 
 TYPE commands\cmd-toggle-pause.hex >\\.\%userCom%
 ECHO Pause Toggle Command Sent Sucessfully
)

IF %1==FADEDOWN (
 SET /p x="NLED11nled99" <nul >\\.\%userCom% 
 TYPE commands\cmd-fade-down-pause.hex >\\.\%userCom%
 ECHO Pause Toggle Command Sent Sucessfully
)

IF %1==NEXTSEQ (
 SET /p x="NLED11nled99" <nul >\\.\%userCom% 
 TYPE commands\cmd-sequence-up.hex >\\.\%userCom%
 ECHO Sequence Up Command Sent Sucessfully
)

IF %1==PREVSEQ (
 SET /p x="NLED11nled99" <nul >\\.\%userCom% 
 TYPE commands\cmd-sequence-down.hex >\\.\%userCom%
 ECHO Sequence Down Command Sent Sucessfully
)

IF %1==ONOFF (
 SET /p x="NLED11nled99" <nul >\\.\%userCom% 
 TYPE commands\cmd-on-off.hex >\\.\%userCom%
 ECHO Select ID#1 Command Sent Sucessfully
)

IF %1==SEQID1 (
 SET /p x="NLED11nled99" <nul >\\.\%userCom% 
 TYPE commands\cmd-selseq-1.hex >\\.\%userCom%
 ECHO Select ID#1 Command Sent Sucessfully
)

IF %1==SEQID2 (
 SET /p x="NLED11nled99" <nul >\\.\%userCom% 
 TYPE commands\cmd-selseq-2.hex >\\.\%userCom%
 ECHO Select ID#2 Command Sent Sucessfully
)

IF %1==SEQID3 (
 SET /p x="NLED11nled99" <nul >\\.\%userCom% 
 TYPE commands\cmd-selseq-3.hex >\\.\%userCom%
 ECHO Select ID#3 Command Sent Sucessfully
)

IF %1==SEQID4 (
 SET /p x="NLED11nled99" <nul >\\.\%userCom% 
 TYPE commands\cmd-selseq-4.hex >\\.\%userCom%
 ECHO Select ID#4 Command Sent Sucessfully
)

IF %1==SEQID5 (
 SET /p x="NLED11nled99" <nul >\\.\%userCom% 
 TYPE commands\cmd-selseq-5.hex >\\.\%userCom%
 ECHO Select ID#5 Command Sent Sucessfully
)

IF %1==SEQID6 (
 SET /p x="NLED11nled99" <nul >\\.\%userCom% 
 TYPE commands\cmd-selseq-6.hex >\\.\%userCom%
 ECHO Select ID#6 Command Sent Sucessfully
)

IF %1==SEQID7 (
 SET /p x="NLED11nled99" <nul >\\.\%userCom% 
 TYPE commands\cmd-selseq-7.hex >\\.\%userCom%
 ECHO Select ID#7 Command Sent Sucessfully
)

IF %1==SEQID8 (
 SET /p x="NLED11nled99" <nul >\\.\%userCom% 
 TYPE commands\cmd-selseq-8.hex >\\.\%userCom%
 ECHO Select ID#8 Command Sent Sucessfully
)

IF %1==SEQID9 (
 SET /p x="NLED11nled99" <nul >\\.\%userCom% 
 TYPE commands\cmd-selseq-9.hex >\\.\%userCom%
 ECHO Select ID#9 Command Sent Sucessfully
)

IF %1==SEQID10 (
 SET /p x="NLED11nled99" <nul >\\.\%userCom% 
 TYPE commands\cmd-selseq-10.hex >\\.\%userCom%
 ECHO Select ID#10 Command Sent Sucessfully
)

