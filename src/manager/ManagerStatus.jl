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
  local period::Float64 = CodeConfig.showStatusPeriod

  if stamp - st.stamp >= CodeConfig.showStatusPeriod
    println(
      "ips: ",      man.cfg.WORLD_IPS,
      ", yps: ",    Int(div(st.yps, period)),
      ", syps: ",   Int(div(st.syps, period)),
      ", rps: ",    Int(div(st.rps, period)),
      ", srps: ",   Int(div(st.srps, period)),
      ", orgs: ",   length(man.tasks)
    )
    st.stamp = stamp
    st.yps   = 0
    st.rps   = 0
    st.syps  = 0
    st.srps  = 0
  end
end
