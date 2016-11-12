#
# Shows real time status of current Manager
#
# @author DeadbraiN
#
import CodeConfig
import ManagerTypes
#
# Shows real time status obtained from ManagerStatus type
# @param man Manager data type object
# @param stamp Current time stamp
#
function _updateStatus(man::ManagerTypes.ManagerData, stamp::Float64)
  local st::ManagerTypes.ManagerStatus = man.status
  local period::Float64 = CodeConfig.modeStatusPeriod

  if stamp - st.stamp >= CodeConfig.modeStatusPeriod
    println(
      "ips ",      man.cfg.WORLD_IPS,
      ", ytps ",   Int(div(st.ytps, period)),
      ", yps ",    Int(div(st.yps, period)),
      ", cps ",    Int(div(st.cps, period)),
      ", eups ",   Int(div(st.eups, period)),
      ", rops ",   Int(div(st.rops, period)),
      ", syps ",   Int(div(st.syps, period)),
      ", rps ",    Int(div(st.rps, period)),
      ", srps ",   Int(div(st.srps, period)),
      ", mps ",    Int(div(st.mps, period)),
      ", orgs ",   length(man.tasks)
    )
    st.stamp = stamp
    st.ytps  = 0
    st.yps   = 0
    st.cps   = 0
    st.eups  = 0
    st.rops  = 0
    st.rps   = 0
    st.syps  = 0
    st.srps  = 0
    st.mps   = 0
  end
end
