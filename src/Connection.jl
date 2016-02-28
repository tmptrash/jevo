#
# TODO: 
# 
# @author DeadbraiN
#
module Connection
  import Event
  
  export Answer
  export Command

  # TODO:
  type Command
    fn::Integer
    args::Array{Any}
  end
  # TODO:
  type Answer
    data::Any
  end
end