THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW. 
EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES 
PROVIDE THE PROGRAM “AS IS” WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED,
INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS 
FOR A PARTICULAR PURPOSE. THE ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE 
PROGRAM IS WITH YOU. SHOULD THE PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL 
NECESSARY SERVICING, REPAIR OR CORRECTION.

 Original Author: Jeffrey Nygaard
 Company: Northern Lights Electronic Design, LLC
 Date: April 11th, 2019
 Contact: JNygaard@NLEDshop.com
 Copyright© 2019 by Northern Lights Electronic Design, LLC. All Rights Reserved
 Website: www.NLEDshop.com/nledaurora
 
 
Description:
	Uses methods native to windows without any third-party installations. Sends NLED Aurora Protocol commands
to compatible devices connected to a serial port.


Helpful Links:
https://batchloaf.wordpress.com/2013/02/12/simple-trick-for-sending-characters-to-a-serial-port-in-windows/


Install and Usage:
	1. Place the folder somewhere on the computer where the files can be accessed
	2. Plug in your NLED Aurora compatible device to the computer. Install driver if necassary.
	3. Open the Device Manager and expand the "Ports (COM & LPT)" menu. 
	4. Locate the NLED device and note the "COMx" name, such as "COM5"
	5. Open "com.txt" and copy the serial port name into it. Use only the first line, and do not use any spaces.
	6. If using a serial adapter, native USB devices do not require this step. Open "baud.txt" and place the desired baud
		rate onto the first line.
	7. Setup is complete.
	8. Execute the .vbs scripts, each command requires a separate .vbs script. Double click the script or call from shortcut, software, command line, etc
	9. Commands can also be issued through send-aurora-command.bat with an argument(shown below) 
		Examples: "send-aurora-command.bat NEXTSEQ" "send-aurora-command.bat PREVSEQ" "send-aurora-command.bat ONOFF" "send-aurora-command.bat PAUSETOG"
	
		
Notes:
	A. Changing the USB port the controller is hooked up to may change the "COMx" name assigned by the Windows operating system.
	B. Since commands have to be sent as numbers(not character/ASCII) the required values are defined in .hex files that can 
		be edited using numerous HEX file editors.
	C. VBS script silently(without opening a command window) executes the batch(.bat) file. An argument is passed to the batch file
		to indicate what command to issue. If the proper argument is passed, and the COM/serial port is available, the batch file will 
		send the required command bytes to the controller immediately.
	D. Other commands could be added, see the NLED Aurora Command Manual found at www.NLEDshop.com/nledaurora
	
Arguments:	
	
	ONOFF: Toggle Device On/Off	
	PAUSETOG: Toggle Pause
	FADEDOWN: Pauses sequence and fades down the LEDs to off
	PREVSEQ: Change to Previous Sequence on Index
	NEXTSEQ: Change to Next Sequence on Index

	SEQID#
	SEQID1: Select Sequence by ID Number - 1
	SEQID2: Select Sequence by ID Number - 2	
	....
	SEQID10: Select Sequence by ID Number - 10

