@echo off
rem
rem All test files should be in "test" folder.
rem The same rule for run-tests.jl
rem
julia --color=yes test\run-tests.jl
echo run-tests.bat
echo %ERRORLEVEL%
exit /b %ERRORLEVEL%