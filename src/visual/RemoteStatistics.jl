#
# Module for remote connection with Organisms server. It displays
# world's statistics (amount of organisms, config, ...) in a window.
# Communication works through Pooling module. This module works 
# in a simple way: first, you have to create RemoteStatistics object
# calling create() function. It returns RemoteStatistics data object,
# which is used in all functions. create() doesn't start displaying
# data. For this, you have to call start() function. To stop
# displaying, call stop(). Displaying statistics is a frame based 
# procedure. It means that, every period of time (see delay 
# argument of create()) a request will be sent. So amount of 
# frames per second depends on delay and network(requests) speed.
#
# @author DeadbraiN
#
module RemoteStatistics
  import Event
  import Gtk
  import Pooling
  import Connection
  import RpcApi
  import Helper
  import Config

  export create
  export start
  export stop

  export RemoteStatData
  #
  # Contains data of for remote host, from where we displaying
  # statistics and shows it in GTK window.
  #
  type RemoteStatData
    pd::Pooling.PoolingData
    win::Gtk.GtkWindowLeaf
    label::Gtk.GtkLabelLeaf
    reqCb::Function
    resCb::Function

    RemoteStatData(pd::Pooling.PoolingData, win::Gtk.GtkWindowLeaf, label::Gtk.GtkLabelLeaf) = new(pd, win, label)
  end
  #
  # Creates connection with remote host for display statistics
  # @param host   Remote host we are connecting to
  # @param port   Remote port we are connecting to
  # @param width  Window width in pixels
  # @param height Window height in pixels
  # @return {RemoteStatData|false}
  #
  function create(host::Base.IPAddr, port::Integer, width::Int = Config.val(:STAT_WIDTH), height::Int = Config.val(:STAT_HEIGHT))
    pd = Pooling.create(host, port)
    if pd !== false
      label = Gtk.@Label("")
      win   = Gtk.@Window("jevo statistics", width, height)
      push!(win, label)
      return RemoteStatData(pd, win, label)
    end

    false
  end
  #
  # Start displaying statistics It makes requests to remote 
  # server, which answers/retuns us statistics data.
  # @param rs Remote world data object. See create()
  # @param delay Delay between requests
  # @param x Left top X coordinate
  # @param y Left top Y coordinate
  # @param x1 Right down X coordinate
  # @param y1 Right down Y coordinate
  #
  function start(rs::RemoteStatData, delay::Int = Config.val(:STAT_FRAME_DELAY))
    rs.reqCb = (pd::Pooling.PoolingData) -> _onBeforeRequest(rs)
    rs.resCb = (pd::Pooling.PoolingData, ans::Connection.Answer) -> _onAfterResponse(rs, ans)

    Event.on(rs.pd.obs, Pooling.EVENT_BEFORE_REQUEST, rs.reqCb)
    Event.on(rs.pd.obs, Pooling.EVENT_AFTER_RESPONSE, rs.resCb)

    Gtk.showall(rs.win)
    Pooling.start(rs.pd, delay)
  end
  #
  # Stops displaying statistics. Closes the connection.
  # @param rs Remote statistics data object
  #
  function stop(rs::RemoteStatData)
    Event.off(rs.pd.obs, Pooling.EVENT_BEFORE_REQUEST, rs.reqCb)
    Event.off(rs.pd.obs, Pooling.EVENT_AFTER_RESPONSE, rs.resCb)
    Pooling.stop(rs.pd)
    Gtk.destroy(rs.label)
    Gtk.destroy(rs.win)
  end
  #
  # This function adds arguments to every request to the server.
  # @param rs RemoteStatData object
  #
  function _onBeforeRequest(rs::RemoteStatData)
    rs.pd.args = [RpcApi.RPC_GET_STATISTICS]
  end
  #
  # Handler of server answer
  # @param rs remote data for specified server
  # @param ans Answer object with region data
  #
  function _onAfterResponse(rs::RemoteStatData, ans::Connection.Answer)
    local d::RpcApi.Statistics = ans.data
    # TODO: on linux we have to use other font name
    Helper.gtk_markup(rs.label,
      """
<span size="12800" face="Lucida Console" foreground="blue">Organisms   : </span><span face="Lucida Console" size="12800">$(d.orgAmount)</span>
<span size="12800" face="Lucida Console" foreground="blue">IPS         : </span><span face="Lucida Console" size="12800">$(d.ips)</span>
<span size="12800" face="Lucida Console" foreground="blue">Total       : </span><span face="Lucida Console" size="12800">$(d.orgTotalAmount)</span>
<span size="12800" face="Lucida Console" foreground="blue">World width : </span><span face="Lucida Console" size="12800">$(d.worldWidth)</span>
<span size="12800" face="Lucida Console" foreground="blue">World height: </span><span face="Lucida Console" size="12800">$(d.worldHeight)</span>
<span size="12800" face="Lucida Console" foreground="blue">Config      : </span><span face="Lucida Console" size="9000">\n$(join(d.cfg, "\n"))</span>
<span size="12800" face="Lucida Console" foreground="blue">Min organism: </span><span face="Lucida Console" size="9000">\nId: $(d.minOrg.id)\nEnergy: $(d.minOrg.energy)</span>
<span size="12800" face="Lucida Console" foreground="blue">Max organism: </span><span face="Lucida Console" size="9000">\nId: $(d.maxOrg.id)\nEnergy: $(d.maxOrg.energy)</span>
      """
    )
  end
end