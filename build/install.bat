rem 
rem Run this to install an application.
rem This script should be run first, before
rem all other...
rem
julia --color=yes Dependencies.jl
rem
rem This part of install script, clones our
rem jevo repo to the local machine. We do it
rem for building application by ci.(bat|sh)
rem script.
rem
rem git clone https://github.com/tmptrash/jevo.git