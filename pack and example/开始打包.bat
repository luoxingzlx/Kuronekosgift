@echo off
set ip1=%cd%
echo %ip1%
cd..
set ip2=%cd%
if exist %ip2%\assets (goto 1) else (goto 2)
if exist %ip2%\cs4mod (goto 1) else (goto 2)
:1
set a=1
(echo assets
echo cs4mod
echo *)>R.lst
"%ip1%\WinRAR.exe" a "%ip2%.zip" -ep1 -rr -av -ao -m5 @R.lst -ibck -xR.lst 1>nul 2>nul
del %ip2%\R.lst
cd..
del "%ip2%.jar" 1>nul 2>nul
ren *.zip *.jar 1>nul 2>nul
echo ������
goto end
:2
echo ��⵽�ⲻ��һ��cs4mod
echo ���ʧ��
:end
pause