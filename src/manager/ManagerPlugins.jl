#
# Manager of jevo plugins. Plugins - are additional modules, which
# listens different events and do different stuff like statistics,
# phylogenetic tree creation and so on. They compiled only if there
# is an option in Config module (see Config.ConfigData.plugIncluded).
# They also work in listen mode. It means that thay shouldn't have
# public interface. Only event handlers.
#
# @author DeadbraiN
#
import Config
#
# Initializes all available plugins according to configuration.
# Included and excluded plugins are set in Config.DataConfig.plugIncluded,
# plugExcluded
# @param cfg Configuration data object
#
function initPlugins(man::ManagerTypes.ManagerData)
  local plugin::String

  for plugin in setdiff(cfg.plugIncluded, cfg.plugExcluded)
    require(Symbol(plugin))
    getfield(Module(Symbol(plugin)), :init)(man)
  end
end
