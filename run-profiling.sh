# Before profiling, read this https://github.com/timholy/ProfileView.jl

julia --color=yes -q -i src/AppManager.jl recover modeQuiet modeProfile modeProfilePeriod:1000
