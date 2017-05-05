module CodeMathOverrides
  #
  # Julia requires these imports
  #
  import Base.+
  import Base.-
  import Base.*
  import Base./
  import Base.&
  import Base.|
  import Base.$
  import Base.>>
  import Base.<<
  import Base.%

  export +
  export -
  export *
  export /
  export &
  export |
  export $
  export >>
  export <<
  export %
  #
  # Shorthand for Float16 type
  #
  const f16 = Float16::DataType
  #
  # Max positive Float16 value
  #
  const F16_MAX = f16(65504.0)
  #
  # Max negative Float16 value
  #
  const F16_MIN = f16(-65504.0)
  #
  # Max positive Float64 value
  #
  const F16_MAX_FLOAT = 65504.0::Float64
  #
  # Max negative Float64 value
  #
  const F16_MIN_FLOAT = -65504.0::Float64
  #
  # Max positive Int value
  #
  const F16_MAX_INT = 65504::Int
  #
  # Max negative Int value
  #
  const F16_MIN_INT = -65504::Int
  #
  # Override for + operator for Float16 type. Checks type
  # overflow and returns max or min value in this case.
  # @param left Left operand
  # @param right Right operand
  # @return {Float16}
  #
  function +(left::f16, right::f16)
    local res::Float64 = Float64(left) + Float64(right)

    if res > F16_MAX_FLOAT return F16_MAX
    elseif res < F16_MIN_FLOAT return F16_MIN end
    #
    # We have to use + operator for Float64, because
    # + for Float16 we have already overridden. This is
    # how we prevent StackOverflow error
    #
    f16(res)
  end
  #
  # Override for - operator for Float16 type. Checks type
  # overflow and returns max or min value in this case.
  # @param left Left operand
  # @param right Right operand
  # @return {Float16}
  #
  function -(left::f16, right::f16)
    local res::Float64 = Float64(left) - Float64(right)

    if res > F16_MAX_FLOAT return F16_MAX
    elseif res < F16_MIN_FLOAT return F16_MIN end
    #
    # We have to use - operator for Float64, because
    # - for Float16 we have already overridden. This is
    # how we prevent StackOverflow error
    #
    f16(res)
  end
  #
  # Override for * operator for Float16 type. Checks type
  # overflow and returns max or min value in this case.
  # @param left Left operand
  # @param right Right operand
  # @return {Float16}
  #
  function *(left::f16, right::f16)
    local res::Float64 = Float64(left) * Float64(right)

    if res > F16_MAX_FLOAT return F16_MAX
    elseif res < F16_MIN_FLOAT return F16_MIN end
    #
    # We have to use * operator for Float64, because
    # * for Float16 we have already overridden. This is
    # how we prevent StackOverflow error
    #
    f16(res)
  end
  #
  # Override for / operator for Float16 type. Checks type
  # overflow and returns max or min value in this case.
  # @param left Left operand
  # @param right Right operand
  # @return {Float16}
  #
  function /(left::f16, right::f16)
    local res::Float64 = Float64(left) / Float64(right)

    if res > F16_MAX_FLOAT return F16_MAX
    elseif res < F16_MIN_FLOAT return F16_MIN end
    #
    # We have to use / operator for Float64, because
    # / for Float16 we have already overridden. This is
    # how we prevent StackOverflow error
    #
    f16(res)
  end
  #
  # Override for & operator for Float16 type. We have to
  # convert Float16 values into Int, because & operator
  # works only with integers
  # @param left Left operand
  # @param right Right operand
  # @return {Float16}
  #
  function (&)(left::f16, right::f16)
    f16(round(Int, left) & round(Int, right))
  end
  #
  # Override for | operator for Float16 type. We have to
  # convert Float16 values into Int, because | operator
  # works only with integers
  # @param left Left operand
  # @param right Right operand
  # @return {Float16}
  #
  function (|)(left::f16, right::f16)
    f16(round(Int, left) | round(Int, right))
  end
  #
  # Override for $ operator for Float16 type. We have to
  # convert Float16 values into Int, because $ operator
  # works only with integers
  # @param left Left operand
  # @param right Right operand
  # @return {Float16}
  #
  function ($)(left::f16, right::f16)
    f16(round(Int, left) $ round(Int, right))
  end
  #
  # Override for >> operator for Float16 type. Checks type
  # overflow and returns max or min value in this case.
  # @param left Left operand
  # @param right Right operand
  # @return {Float16}
  #
  function (>>)(left::f16, right::f16)
    local res::Int = round(Int, left) >> round(Int, right)

    if res > F16_MAX_INT return F16_MAX
    elseif res < F16_MIN_INT return F16_MIN end

    f16(res)
  end
  #
  # Override for << operator for Float16 type. Checks type
  # overflow and returns max or min value in this case.
  # @param left Left operand
  # @param right Right operand
  # @return {Float16}
  #
  function (<<)(left::f16, right::f16)
    local res::Int = round(Int, left) << round(Int, right)

    if res > F16_MAX_INT return F16_MAX
    elseif res < F16_MIN_INT return F16_MIN end

    f16(res)
  end
  #
  # Override for << operator for Float16 type. Checks type
  # overflow and returns max or min value in this case.
  # @param left Left operand
  # @param right Right operand
  # @return {Float16}
  #
  function (%)(left::f16, right::f16)
    local r::Int = round(Int, right)
    f16(round(Int, left) % (r === 0 ? 1 : r))
  end
end
