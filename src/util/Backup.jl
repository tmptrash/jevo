#
# Makes backup of custom data type and stores it in a file.
# May load a backup from file also.
#
# @author DeadbraiN
#
module Backup
  import Config.@if_debug
  import Helper

  export folder
  export save
  export load
  export FOLDER_NAME
  #
  # Defoult postfix of backup files
  #
  const FILE_POSTFIX = "-jevo-bkup.data"
  #
  # Default name of the folders with backups
  #
  const FOLDER_NAME  = "backup"
  #
  # creates backup directory if it doesn't exists
  # @return {Bool}
  #
  function folder(folder::String = FOLDER_NAME)
    try
      if !isdir(folder) mkdir(folder) end
      return true
    catch e
      Helper.err("Backup.folder(): $e")
      @if_debug showerror(STDOUT, e, catch_backtrace())
    end
    return false
  end
  #
  # Makes a backup of application and stores it in file
  # @param data Data to save
  # @param directory Folder name
  # @param postfix Postfix for backup files
  # @param asText true if data need to be saved as a text
  # @return {Bool} Saving status
  #
  function save(data::Any, directory::String = FOLDER_NAME, postfix::String = FILE_POSTFIX, asText::Bool = false)
    local file::String = string(directory, "/", replace(string(now()), ":", "-"), postfix)

    if !folder(directory) return false end
    if isfile(file)
      Helper.warn("Backup file is already exists: $file")
      return false
    end

    Helper.save(data, file, asText)
  end
  #
  # Loads a backup from file and returns it
  # @param directory Folder name
  # @param file File name to load. If "" is set, last backup
  # will be loaded.
  # @return {Any|nothing} Loaded data or nothing if error
  #
  function load(directory::String = FOLDER_NAME, file::String = "")
    if !folder(directory) return nothing end
    if isempty(file)
      file = _getOldestFile(directory)
      if isempty(file)
        Helper.warn("No backup files")
        return nothing
      end
    end

    Helper.load(directory * "/" * file)
  end
  #
  # Returns array of backup files
  # @param directory Folder we are looking in
  # @return {Array{String, 1}}
  #
  function getFiles(directory::String = FOLDER_NAME)
    try
      if !isdir(directory) return [] end
      local rd::Array{AbstractString, 1} = readdir(directory)

      sort!(rd, alg = QuickSort, lt = (f1, f2) -> f1 < f2)
      return rd
    catch e
      Helper.warn("Backup.getFiles(): $e")
      @if_debug showerror(STDOUT, e, catch_backtrace())
    end
    []
  end
  #
  # Returns name of the last modified file in a folder
  # @param directory Folder with backup files
  # @return {String}
  #
  function lastFile(directory::String = FOLDER_NAME)
    _getOldestFile(directory)
  end

  #
  # Returns full path to the oldest (last modified file) file
  # in a folder "folder".
  # @param directory
  # @return {String} File path or "" if error
  #
  function _getOldestFile(directory::String)
    try
      if !isdir(directory) return "" end
      local rd::Array{AbstractString, 1} = readdir(directory)
      if length(rd) < 1 return "" end
      return rd[indmax(map((f) -> mtime(string(directory, "/", f)), rd))]
    catch e
      Helper.warn("Backup._getOldestFile(): $e")
      @if_debug showerror(STDOUT, e, catch_backtrace())
    end
    ""
  end
end
