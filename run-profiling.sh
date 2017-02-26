# Before profiling, read this https://github.com/timholy/ProfileView.jl

julia --color=yes -q -i src/AppManager.jl recover modeQuiet:1 modeProfile modeProfilePeriod:1000
