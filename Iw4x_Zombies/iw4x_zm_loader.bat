@echo off
rem Script Creator: Soliderror
echo looking for load
if exist "%cd%\zm_load.txt" (start iw4x.exe) else (

echo moving iw4x IWDs
xcopy /i /s "%cd%\iw4x\iw4x_00.iwd" "%cd%\zm_keeper\IWD_IW4\" /y
xcopy /i /s "%cd%\iw4x\iw4x_01.iwd" "%cd%\zm_keeper\IWD_IW4\" /y

echo moving zombie IWDs
xcopy /i /s "%cd%\zm_keeper\IWD_ZM\iw4xzm_00.iwd" "%cd%\iw4x\" /y
xcopy /i /s "%cd%\zm_keeper\IWD_ZM\iw4xzm_01.iwd" "%cd%\iw4x\" /y
xcopy /i /s "%cd%\zm_keeper\IWD_ZM\iw4xzm_02.iwd" "%cd%\iw4x\" /y
xcopy /i /s "%cd%\zm_keeper\IWD_ZM\iw4xzm_03.iwd" "%cd%\iw4x\" /y

echo moving iw4 zone/patch
xcopy /s /i "%cd%\zone\patch" "%cd%\zm_keeper\zone\iw4\patch"
echo cleaning up
del "%cd%\zone\patch"

echo adding zombies zone/patch
xcopy /s /i "%cd%\zm_keeper\zone\zombie\" "%cd%\zone"


echo cleaning up
del "%cd%\iw4x\iw4x_00.iwd" 
del "%cd%\iw4x\iw4x_01.iwd"

echo adding load file
xcopy /i /s "%cd%\zm_keeper\check\zm_load.txt" "%cd%" /y

echo done
echo starting..
start iw4x.exe
)
end
