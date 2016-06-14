import CommandLine
#
# This manager is also a server for all other remote managers. These
# remote managers are clients for current and may use "Client" module
# to send commands and obtain results. So, this command line property
# will be used for current manager(server) for listening clients. For
# this you have to run Manager like this:
# >julia AppManager.jl port=2000
# Fast port is used for "fast" pooling mode.
# Next const is an IP of server. Is used in pair with ARG_SERVER_PORT
#
const ARG_SERVER_PORT      = "port"
const ARG_FAST_SERVER_PORT = "fastPort"
const ARG_SERVER_IP        = "ip"
#
# Current manager may be connected to the left-sided other server or
# instance. It means, that current world will be joined with that
# left-sided world and all organisms will be shared between both of
# them.
#
const ARG_LEFT_SERVER_PORT = "leftPort"
const ARG_LEFT_SERVER_IP   = "leftIp"
#
# Current manager may be connected to the right-sided other server or
# instance. It means, that current world will be joined with that
# right-sided world and all organisms will be shared between both of
# them.
#
const ARG_RIGHT_SERVER_PORT = "rightPort"
const ARG_RIGHT_SERVER_IP   = "rightIp"
#
# Current manager may be connected to the up-sided other server or
# instance. It means, that current world will be joined with that
# up-sided world and all organisms will be shared between both of
# them.
#
const ARG_UP_SERVER_PORT = "upPort"
const ARG_UP_SERVER_IP   = "upIp"
#
# Current manager may be connected to the down-sided other server or
# instance. It means, that current world will be joined with that
# down-sided world and all organisms will be shared between both of
# them.
#
const ARG_DOWN_SERVER_PORT = "downPort"
const ARG_DOWN_SERVER_IP   = "downIp"
#
# In this mode no terminal output will be produced
#
const ARG_QUIET            = "quiet"
#
# Returns port number set in command line or in Config object (default)
# @param cmdParam Name of command line parameter
# @param cfgParam Name of configuration parameter if cmdParam wasn't set
# @return {Int} Port number or 0 if no port available
#
function _getPort(cmdParam::ASCIIString, cfgParam::Symbol)
  local port::ASCIIString = CommandLine.val(Manager._data.params, cmdParam)
  port == "" ? Config.val(cfgParam) : parse(Int, port)
end
#
# Returns IP address of current server. See ARG_SERVER_IP for details
# @param cmdParam Name of command line parameter
# @param cfgParam Name of configuration parameter if cmdParam wasn't set
# @return {IPv4} IP address
#
function _getIp(cmdParam::ASCIIString, cfgParam::Symbol)
  local ip::ASCIIString = CommandLine.val(Manager._data.params, cmdParam)
  ip == "" ? Config.val(cfgParam) : IPv4(ip)
end
