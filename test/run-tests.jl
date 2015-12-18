#
# This script runs all tests in current folder, which are 
# in format: "test-<name>.jl". Other files will be skipped.
#
# @author DeadbraiN
#
using FactCheck

#
# All tests should have format: "test-<name>.jl"
#
test_regex = r"^test-.*\.jl$"
#
# This line is needed after migrating to julia v0.4, because
# include() doesn't search files(modules) in current folder.
#
push!(LOAD_PATH, "$(pwd())/src")

#
# All test files should be in "test" folder
#
test_files = filter(n -> ismatch(test_regex, n), readdir("test"))
if length(test_files) == 0
    error("No test files found. Make sure you're running from the root directory and test files are in 'test' folder.")
end
#
# Include tests means run them
#
for test_file in test_files include(test_file) end
#
# return the overall exit status
#
exitstatus()
