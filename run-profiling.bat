@echo off
rem
rem Before profiling, read this https://github.com/timholy/ProfileView.jl
rem
julia --color=yes -q -i src/AppManager.jl recover modeQuiet:0 modeProfile modeProfilePeriod:2000
