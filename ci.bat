rem
rem This is mega cool Continue Integration script :)
rem It runs our unit tests all the time with 1 min delay
rem In case of tests errors, it stops and shows errors
rem
@echo off
:loop
    cmd /c run-tests.bat
	if %ERRORLEVEL% NEQ 0 goto end
    sleep 60
goto loop
:end