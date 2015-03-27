#
# This module contains all application related exception types
#
module Exceptions
  export UserException

  #
  # Describes user exception. It means, that last exception
  # is related to user activity. Incorrect arguments in code
  # or incorrect input.
  #
  type UserException <: Exception
    #
    # {ASCIIString} Exception message
    #
    msg::ASCIIString
  end
end