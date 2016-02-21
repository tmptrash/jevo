rem @echo off
rem
rem This is mega cool Continue Integration script :)
rem It runs our unit tests all the time with 1 min delay
rem In case of tests errors, it stops and shows errors
rem
cd jevo
if %ERRORLEVEL% NEQ 0 goto end
:loop
    git pull > pull.txt
	if %ERRORLEVEL% NEQ 0 goto end
	grep -i 'Already up-to-date' pull.txt > grep.txt
	set /p status=<grep.txt
	if "%status%" NEQ "Already up-to-date." (
		cd build
		cmd /c run-tests-ci.bat
		if %ERRORLEVEL% NEQ 0 goto end
		cd ..
	)
    sleep 10
goto loop
:end
cscript build-failed.vbs "The build is failed!"