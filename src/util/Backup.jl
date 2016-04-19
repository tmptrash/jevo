#
# Makes backup of custom data type and stores it in a file.
# May load a backup from file also.
#
# @author DeadbraiN
#
module Backup
  import Helper

  export save
  export load
  export FOLDER_NAME
  #
  # Prefix of backup files
  #
  const FILE_POSTFIX = "-jevo-bkup.data"
  #
  # Name of the folders with backups
  #
  const FOLDER_NAME  = "backup"
  #
  # Makes a backup of application and stores it in file
  # @param data Data to save
  # @return {Bool} SAving status
  #
  function save(data::Any)
    local file::ASCIIString = string(FOLDER_NAME, "/", replace(string(now()), ":", "-"), FILE_POSTFIX)

    if !isdir(FOLDER_NAME) mkdir(FOLDER_NAME) end
    if isfile(file)
      Helper.warn("Backup file is already exists: $file")
      return false
    end

    Helper.save(data, file)
  end
  #
  # Loads a backup from file and returns it
  # @param file File name to load. If "" is set, last backup
  # will be loaded.
  # @return {Any|null} Loaded data or null if error
  #
  function load(file::ASCIIString = "")
    if !isdir(FOLDER_NAME)
      Helper.warn("Backup folder doesn't exist: $FOLDER_NAME")
      return null
    end
    if isempty(file)
      file = _getOldestFile(FOLDER_NAME)
      if isempty(file)
        Helper.warn("No backup files")  
        return null
      end
    end

    Helper.load(FOLDER_NAME * "/" * file)
  end
  #
  # Returns array of backup files
  # @param folder Folder we are looking in
  # @return {Array{ASCIIString, 1}}
  #
  function getFiles(folder::ASCIIString = FOLDER_NAME)
    try
      if !isdir(folder) return "" end
      local rd::Array{AbstractString} = readdir(folder)

      sort!(rd, alg = QuickSort, lt = (f1, f2) -> f1 < f2)
      return rd
    catch e
      Helper.warn("Backup.getFiles(): $e")
    end
    []
  end
  #
  # Returns name of the last modified file in a folder
  # @return {ASCIIString}
  #
  function lastFile()
    _getOldestFile(FOLDER_NAME)
  end

  #
  # Returns full path to the oldest (last modified file) file
  # in a folder "folder".
  # @param folder
  # @return {ASCIIString} File path or "" if error
  #
  function _getOldestFile(folder::ASCIIString)
    try
      if !isdir(folder) return "" end
      local rd::Array{AbstractString} = readdir(folder)
      if length(rd) < 1 return "" end
      return rd[indmax(map((f) -> mtime(string(folder, "/", f)), rd))]
    catch e
      Helper.warn("Backup._getOldestFile(): $e")
    end
    ""
  end
end