@echo off
rem Script Creator: Soliderror
echo cleaning load
if exist "%cd%\zm_load.txt" ( 
echo addig iw4x IWDs
xcopy /i /s "%cd%\zm_keeper\IWD_IW4\iw4x_00.iwd" "%cd%\iw4x\" /y
xcopy /i /s "%cd%\zm_keeper\IWD_IW4\iw4x_01.iwd" "%cd%\iw4x\" /y

echo removig zombie IWDs
del "%cd%\iw4x\iw4xzm_00.iwd"
del "%cd%\iw4x\iw4xzm_01.iwd"
del "%cd%\iw4x\iw4xzm_02.iwd"
del "%cd%\iw4x\iw4xzm_03.iwd"

echo removing zombie zone/patch
del "%cd%\zone\patch"

echo adding iw4x zone/patch
xcopy /i /s "%cd%\zm_keeper\zone\iw4\" "%cd%\zone\" /y

echo cleaning up
del "%cd%\zm_keeper\IWD_IW4\iw4x_00.iwd"
del "%cd%\zm_keeper\IWD_IW4\iw4x_01.iwd"


echo removing load
del "%cd%\zm_load.txt"

start iw4x.exe
) else (start iw4x.exe)
end
