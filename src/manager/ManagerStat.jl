import RpcApi
import Config
#
# Checks if we need to update statistics data like amount of organisms,
# IPS, best organism parameters and so on. Updates statistics according
# to STAT_UPDATE_PERIOD config.
#
function _updateStat(stamp::Float64)
  local bestOrgs::Array{RpcApi.SimpleOrganism, 1}
  local org::RpcApi.SimpleOrganism
  local json::ASCIIString

  if (time() - stamp) > Config.val(:STAT_UPDATE_PERIOD)
    bestOrgs = Manager.getBest(1)
    if length(bestOrgs) > 0
      org  = bestOrgs[1]
      json = string(
        "{",
        string("\"Probabilities\"       : ", org.mutationProbabilities, ",\n"),
        string("\"Amount of functions\" : ", length(split(string(org.code), "function ")) - 1, ",\n"),
        string("\"Functions calls\"     : ", length(split(string(org.code), "func_")) - 1, ",\n"),
        string("\"Mutations on clone\"  : ", string(org.mutationsOnClone), ",\n"),
        string("\"Mutations period\"    : ", string(org.mutationPeriod), ",\n"),
        string("\"Mutations amount\"    : ", string(org.mutationAmount), ",\n"),
        string("\"Energy\"              : ", string(org.energy), ",\n"),
        string("\"Amount of lines\"     : ", string(org.codeSize), ",\n"),
        string("\"Amount of organisms\" : ", string(length(Manager._data.tasks)), ",\n"),
        string("\"IPS\"                 : ", string(Config.val(:WORLD_IPS)), ",\n"),
        string("\"Generation number\"   : ", string(Manager._data.totalOrganisms), "\n"),
        "},\n"
      )
      _appendToFile(json, "file.json")
    end
    # 'Probabilities'          : [[100,300,95,0,1,1,1],[100,300,95,0,1,1,1],[100,300,95,0,1,1,1]],
    # 'Amount of functions'    : [3,     2,     3,     1,     1,      1,     2,     ],
    # 'Functions calls'        : [4,     11,    6,     11,    9,      6,     12,    ],
    # 'Mutations on clone'     : [26,    6,     75,    6,     6,      6,     6,     ],
    # 'Mutations period'       : [9345,  2459,  7682,  5532,  5532,   5532,  5532,  ],
    # 'Mutations amount'       : [50,    7,     7,     0,     0,      0,     0,     ],
    # 'Energy'                 : [67501, 186902,278321,838152,2780779,686922,702214,],
    # 'Amount of lines'        : [57,    87,    96,    107,   117,    124,   119,   ],
    # // Population
    # 'Amount of organisms'    : [360,   170,   275,   250,   370,    370,   400,   ],
    # 'IPS'                    : [15,    15,    11,    7,     7,      4,     5,     ],
    # 'Generation number'      : [653433,681659,708507,742929,753377, 760403,788910,],
    # // World
    # 'Name'                   : '01-nb',
    # 'Width\Height'           : [900, 600],
    # 'Energy decrease period' : [200     ],
    # 'Energy decrease amount' : [1       ],
    # 'Remove after time'      : [500     ],
    # 'Remove amount'          : [5       ],
    # 'Clone period'           : [5       ],
    # 'Max arganisms amount'   : [400     ],
    # 'Energy check period'    : [500     ]
    return time()
  end

  stamp
end

#
# Appends native values to the file.
# @param data String data to save
# @param file File name, we want append to
# @return {Bool} saving result
#
function _appendToFile(data::ASCIIString, file::ASCIIString)
  local io  = null
  local ret = true

  try
    io = open(file, "a") # "a" - means "file append" mode
    write(io, data)
    close(io)
  catch(e)
    warn("ManagerStat._appendToFile(): $e")
    ret = false
  finally
    if io !== null close(io) end
  end

  ret
end
