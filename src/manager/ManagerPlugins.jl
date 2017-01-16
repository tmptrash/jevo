#
# Manager of jevo plugins. Plugins - are additional modules, which
# listens different events and do different stuff like statistics,
# phylogenetic tree creation and so on. They compiled only if there
# is an option in Config module (see Config.ConfigData.plugIncluded).
# They also work in listen mode. It means that they shouldn't have
# public interface. Only event handlers. So we may disable them
# by changing configuration from command line. The meaning of configs
# plugIncluded and plugExcluded is very simple: plugIncluded contains
# default list of active plugins. Using plugExcluded you may disable
# (exclude) some of them. You may use "all" value in both settings to
# include or exclude all plugins. Example of excluding of Phylogen
# plugin:
#
# >julia src\AppManager.jl plugExcluded:["Phylogen"]
#
# @author DeadbraiN
#
import Config
#
# Means all plugins in include or exclude lists
#
const ALL_PLUGINS = "all"
#
# Initializes all available plugins according to configuration.
# Included and excluded plugins are set in Config.DataConfig.plugIncluded,
# plugExcluded
# @param cfg Configuration data object
# @param obs Observer for events
# @return {Array{String,1}} Activated plugins array
#
function initPlugins(man::ManagerTypes.ManagerData)
  local plugin::String
  local plugins::Array{String, 1}
  local included::Array{String, 1} = man.cfg.plugIncluded
  local excluded::Array{String, 1} = man.cfg.plugExcluded
  #
  # "all" setting is in exclude list. We have to disable all plugins
  # by returning nothing. require() will not be called for them
  #
  if findfirst(excluded, ALL_PLUGINS) > 0 return false end
  #
  # if "all" setting is in include list, we have to include all plugins.
  # otherwise excluded plugins should be excluded from included list
  #
  plugins = findfirst(included, ALL_PLUGINS) > 0 ? included : setdiff(included, excluded)
  Helper.info(string("Initializing plugins: ", join(plugins, ","), "..."), false)
  for plugin in plugins
    if plugin === ALL_PLUGINS continue end
    Base.require(Symbol(plugin))
    getfield(Main.eval(Symbol(plugin)), :init)(man)
  end
  Helper.done()

  true
end
