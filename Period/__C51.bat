@echo off
::This file was created automatically by CrossIDE to compile with C51.
C:
cd "\Users\Mahmoud\Desktop\ELEC291\Lab5\Period\"
"C:\CrossIDE\Call51\Bin\c51.exe" --use-stdout  "C:\Users\Mahmoud\Desktop\ELEC291\Lab5\Period\PeriodEFM8.c"
if not exist hex2mif.exe goto done
if exist PeriodEFM8.ihx hex2mif PeriodEFM8.ihx
if exist PeriodEFM8.hex hex2mif PeriodEFM8.hex
:done
echo done
echo Crosside_Action Set_Hex_File C:\Users\Mahmoud\Desktop\ELEC291\Lab5\Period\PeriodEFM8.hex
