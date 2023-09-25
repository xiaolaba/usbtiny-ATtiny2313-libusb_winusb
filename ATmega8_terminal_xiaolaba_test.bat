
prompt xiao$G$S

@echo off
@echo :: = REM but no print to screen

:: set path=%PATH%;C:\Program Files (x86)\Arduino\hardware\tools\avr\bin;C:\Program Files (x86)\Arduino\hardware\tools\avr\bin\etc

:: avrdude -C"C:\Program Files (x86)\Arduino\hardware\tools\avr\etc\avrdude.conf" -b38400 -c usbtiny -p m8 -v -e -U flash:w:ATmegaBOOT.hex -U lfuse:w:0xe4:m hfuse:w:0xc4:m -U lock:w:0x0F:m

:: avrdude -c usbtiny -p m8 -v -e -b 19200 -U flash:w:ATmegaBOOT.hex -U lfuse:w:0xe4:m -U hfuse:w:0xc4:m -U lock:w:0x3F:m


:: avrdude -c usbtiny -p m8 -v -e -b 19200 -U flash:w:ATmegaBOOT.hex -U lfuse:w:0xc4:m -U hfuse:w:0xdf:m -U lock:w:0x3F:m

:: 16MHZ
:: avrdude -c usbtiny -p m8 -v -e -b 19200 -U flash:w:ATmegaBOOT.hex -U lfuse:w:0xbf:m -U hfuse:w:0xcc:m -U lock:w:0x0F:m


:: https://github.com/Optiboot/optiboot/blob/master/optiboot/boards-1.6.txt
:: 16MHZ XTAL

:: avrdude -c usbtiny -p t45 -v -e -b 19200 -U flash:w:main.hex -U lfuse:w:0x6a:m -U hfuse:w:0xff:m
::avrdude -c usbtiny -p t45 -v -e -t


:: internal RC 8MHZ
:: avrdude -c usbtiny -p m8 -v -e -b 19200 -U flash:w:optiboot_atmega8.hex -U lfuse:w:0xe2:m -U hfuse:w:0xcc:m -U lock:w:0x3F:m

:: test winusb driver + arvdure6.3, result, winusb driver v6.1.1700.16385, usbtiny, not workig 
copy avrdude6.3.exe avrdude.exe
copy avrdude6.3.conf avrdude.conf
avrdude -c usbtiny -p m8 -v -e -t

pause

:: test winusb driver + arvdure7.1, result, winusb driver v6.1.1700.16385, usbtiny, good
copy avrdude7.1.exe avrdude.exe
copy avrdude7.1.conf avrdude.conf
avrdude -c usbtiny -p m8 -v -e -t
pause

del avrdude.exe
del avrdude.conf
