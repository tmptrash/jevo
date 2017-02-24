@echo off
rem
rem All test files should be in "test" folder.
rem The same rule for run-tests.jl. This script
rem should be run from root folder.
rem
if not exist test (
  echo ERROR: Wrong run folder! Run this script from root folder.
  exit /b 1
)
set ERRORLEVEL=0
julia --color=yes test\run-tests.jl modeTest modeQuiet:2
exit /b %ERRORLEVEL%
