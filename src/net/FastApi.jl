#
# Fast API module. Contains all available data types lists splited by
# Void type. For example: type T i::Int end will be stored like:
# DataType[Int, Void]. Void type is a separator between types. So
# if you have no parameters you may set dataIndex to Void type.
#
# @author DeadbraiN
#
module FastApi
  export API_UINT64
  export API_ASCIISTRING
  export API_UINT8
  export API_UINT16
  export API_DOT_COLOR
  #
  # Indexes in _api field, which are used in request() method in
  # fast mode.
  #
  const API_UINT64        = 1
  const API_ASCIISTRING   = 3
  const API_UINT8         = 5
  const API_UINT16        = 7
  const API_DOT_COLOR     = 9
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
    UInt64, Void,                           # 1
    String, Void,                           # 3
    UInt8, Void,                            # 5
    UInt16, Void,                           # 7
    UInt16, UInt16, UInt32, Void            # 9 pos::Helper.Point, color::UInt32, ips::UInt16
  ]
end
