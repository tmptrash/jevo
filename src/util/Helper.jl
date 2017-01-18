#
# @author DeadbraiN
#
module Helper
  export CodePos
  export Point
  export RetObj

  export toBytes
  export fastRand
  export fastZRand
  export getProbIndex
  export getSupportedTypes
  export isopen
  export done
  export info
  export warn
  export error
  export emptyFn

  export SUPPORTED_TYPES
  #
  # These constants were gotten from julia/base/stream.jl file. They
  # are used for optimization of isopen() function.
  #
  const StatusUninit = 0 # handle is allocated, but not initialized
  const StatusInit   = 1 # handle is valid, but not connected/active
  const StatusClosed = 6 # handle is closed
  const StatusEOF    = 7 # handle is a TTY that has seen an EOF event
  #
  # Describes organism's code position. This position is used
  # for mutations (add, change, del,...)
  #
  type CodePos
    #
    # Index of function in Organism.Creature.funcs array
    #
    fnIdx::Int
    #
    # Index of block inside Creature.Func function
    #
    blockIdx::Int
    #
    # Index of code line inside Creature.Block.lines
    #
    lineIdx::Int
  end
  #
  # One point in the world. Is described by two coordinates.
  #
  type Point
    x::Int
    y::Int
  end
  #
  # Universal structure for returning a value from event handlers.
  # See "beforeclone", "getenergy" and other events for details.
  #
  type RetObj
    #
    # Return value
    #
    ret::Any
    #
    # Position in a world
    #
    pos::Helper.Point
    #
    # ctor
    #
    RetObj(r = nothing, p = nothing) = (x = new(r); p === nothing ? x : (x.pos = p;x))
  end
  #
  # Converts any type to bytes array
  # @param x Value we have to convert
  # @return {Vector{UInt8}}
  #
  function toBytes(x::Any)
     local sz::Int = sizeof(x)
     local ba::Vector{UInt8} = Vector{UInt8}(sz)
     local ptr::Ptr{UInt8} = convert(Ptr{UInt8}, pointer_from_objref(x))
     unsafe_copy!(pointer(ba), ptr, sz)

     ba
  end
  #
  # Prints warning message with white color
  # @param msg Text message to show
  # OPT: console output is heavy operation
  function warn(msg::AbstractString)
    print_with_color(:yellow, "WARNING: ", msg, "\n")
  end
  #
  # Print error message with red color and don't stop an application
  # @param msg Text message to show
  # OPT: console output is heavy operation
  function error(msg::AbstractString)
    print_with_color(:red, "ERROR: ", msg, "\n")
  end
  #
  # Prints info message with green color
  # @param msg Text message to show
  # @param newLine Add new line character at the end of message
  #
  function info(msg::AbstractString, newLine::Bool = true)
    print_with_color(:green, string("INFO: ", msg, newLine ? "\n" : ""))
  end
  #
  # Prints "done" after info message (see info() function)
  # @param msg Text message to show
  #
  function done(msg::AbstractString = "done")
    print_with_color(:green, string(msg, "\n"))
  end
  #
  # This method is an analog of isopen() from julia/base/stream.jl.
  # We created this, because it original version is slow, because
  # of exception inside it. In case if some constants or it's
  # implementation will be changed, we have to update it.
  # @param sock Socket we are checking
  # @return {Bool}
  #
  function isopen{SocketType}(sock::SocketType)
      if sock.status == StatusUninit || sock.status == StatusInit return false end
      sock.status != StatusClosed && sock.status != StatusEOF
  end
  #
  # Returns lines array from AST by specified indexes. e.g.:
  # [2,1] means ex.args[2].args[1].args
  # @param exp Expression we have to start with
  # @return {Array{Int, 1}}
  #
  function getLines(exp::Expr, indexes::Array{Int, 1})
    getArg(exp, indexes).args
  end
  #
  # Returns head of specified AST node. An array of indexes
  # is used like a node position. For example:
  # [2,1] means ex.args[2].args[1].head
  # @param exp Expression we have to start with
  # @return {Array{Int, 1}}
  #
  function getHead(exp::Expr, indexes::Array{Int, 1})
    getArg(exp, indexes).head
  end
  #
  # Returns argument of specified AST node. An array of indexes
  # is used like a node position. For example:
  # [2,1] means ex.args[2].args[1]
  # @param exp Expression we have to start with
  # @return {Array{Int, 1}}
  #
  function getArg(exp::Expr, indexes::Array{Int, 1})
    local args::Array{Any, 1} = exp.args
    local len::Int = length(indexes)

    for i = 1:(len-1)
      args = args[indexes[i]].args
    end

    args[indexes[len]]
  end
  #
  # This function is not presented in Julis Gtk package
  #
  #function gtkMarkup(label::Gtk.GtkLabel,str)
  #  ccall((:gtk_label_set_markup,Gtk.libgtk),Void,(Ptr{Gtk.GObject},Ptr{UInt8}),label,str)
  #  return label
  #end
  #
  # Fast version of rand(n::Range) function. Generates random Int number in
  # range 1:n
  # @param n Right number value in a range
  #
  function fastRand(n::Int) trunc(Int, rand() * n) + 1 end
  #
  # Fast version of rand(0::Range) function. Generates random Int number in
  # range 0:n
  # @param n Right number value in a range
  #
  function fastZRand(n::Int) trunc(Int, rand() * (n + 1)) end
  #
  # It calculates probability index from variable amount of components.
  # Let's imagine we have three actions: one, two and three. We want
  # these actions to be called randomly, but with different probabilities.
  # For example it may be [3,2]. It means that one should be called
  # in half cases, two in 1/3 cases and three in 1/6 cases. Probabilities
  # should be greated then -1.
  # @param {Array{Int, 1}} prob Probabilities array. e.g.: [3,2] or [1,3]
  # @return {Int} 0 Means that index is invalid
  #
  function getProbIndex(prob::Array{Int, 1})
    local len::Int = length(prob)
    if len < 1 return 0 end
    local s::Int = sum(prob)
    if s < 1 return 0 end
    local num::Int = fastRand(s)
    local i::Int = 1
    #
    # This is small optimization algorithm. if random number in
    # a left part of all numbers sum, the we have to go to it from
    # left to right, if not - then from right to left. Otherwise,
    # going every time from left to right will be a little bit
    # slower then this aproach.
    #
    if num < div(s, 2)
      s = 0
      for i = 1:len if num <= (s += prob[i]) break end end
    else
      for i = len:-1:1 if num > (s -= prob[i]) break end end
    end

    i
  end
  #
  # Returns default empty map with supported Julia types. All supported
  # types should be stored in getSupportedTypes() function.
  # @return {Dict{DataType, Array{Symbol, 1}}}
  #
  function getTypesMap()
    Dict{DataType, Array{Symbol, 1}}(getSupportedTypes((typ) -> typ => [])...)
  end
  #
  # Returns supported types array for organism language
  # @param fn Callback function, which is called for
  # every array element
  # @return {Array{DataType, 1}}
  #
  function getSupportedTypes(fn::Function = (t) -> t)
    map(fn, SUPPORTED_TYPES)
  end
  #
  # Checks if position is empty. x == y == 0 - this is empty
  # @param pos Position to check
  #
  function empty(pos::Point)
    pos.x === pos.y === 0
  end
  #
  # Saves custom data into the file. If file exists, it will
  # be overrided. It's only rewrites existing file and not
  # append it. It also doesn't work with native types, in sense
  # that you can't save native values into the file without#
  # meta information. For example, you can't store ascii string
  # in a file without special prefic before it.
  # @param data Data to save
  # @param file File name
  # @param asText true if data need to be saved as a text
  # @return {Bool} saving result
  #
  function save(data::Any, file::String = "backup.data", asText::Bool = false)
    local io  = nothing
    local ret = true

    try
      io = open(file, "w")
      if asText write(io, data)
      else serialize(io, data)
      end
    catch(e)
      warn("Helper.save(): $e")
      showerror(STDOUT, e, catch_backtrace())
      ret = false
    finally
      if io !== nothing close(io) end
    end

    ret
  end
  #
  # Loads custom data from the file
  # @param file File name
  # @return {Any|nothing} loading result or nothing
  #
  function load(file::String = "backup.data")
    local io  = nothing
    local ret = nothing

    try
      io  = open(file)
      ret = deserialize(io)
    catch(e)
      warn("Helper.load(): $e")
      showerror(STDOUT, e, catch_backtrace())
      ret = nothing
    finally
      if io !== nothing close(io) end
    end

    ret
  end
  #
  # Just stub function, which is used as a placeholder for saving a backup
  #
  function emptyFn() end

  #
  # Supported types of code inside organism. At the end must be numeric types!!
  # See @randBoolAndNumType() macro for details.
  #
  const SUPPORTED_TYPES = [String, Bool, Int8, Int16, Int, Float64]
end
