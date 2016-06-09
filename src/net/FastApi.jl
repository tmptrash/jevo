#
# Fast API module. Contains all available data types lists splited by
# Void type. For example: type T i::Int end will be stored like:
# DataType[Int, Void]. Void type is a separator between types. So
# if you have no parameters you may set dataIndex to Void type.
#
# @author DeadbraiN
#
module FastApi
  #
  # Just returns all available types API
  # @return {Array{DataType, 1}}
  #
  function getTypes()
    _api::Array{DataType, 1}
  end
  #
  # Available data types with indexes in comments
  #
  const _api = DataType[
    UInt64, Void             # 0
  ]
end
