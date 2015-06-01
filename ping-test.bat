@echo off

rem
rem FOR WINDOWS ONLY.
rem This BAT file is for ping-test to default gateway.
rem

for /F "tokens=3" %%f in ('route print -4 ^| findstr "\<0\.0\.0\.0\> * \<0\.0\.0\.0\>"') do (
	for /L %%i in (1,0,2) do (
		ping -n 1 %%f) && @echo  & timeout /t 1 > nul
	)

pause
exit
