@echo off
rem
rem This script is used in pair with ci.bat.
rem It runs unit tests in separate process
rem and returns error code or 0 if okay.
rem
cmd /c build\run-tests.bat
echo run-tests-ci.bat
echo %ERRORLEVEL%
exit /b %ERRORLEVEL%