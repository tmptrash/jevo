#
# Shows real time status of current Manager
#
# @author DeadbraiN
#
#
# Shows real time status obtained from ManagerStatus type
# @param man Manager data type object
#
function _showStatus(man::ManagerTypes.ManagerData)
  # local st::ManagerTypes.ManagerStatus = man.status
  #
  # println(
  #   "ips: ",      st.ips,
  #   ", yield: ",  st.yield,
  #   ", rps: ",    st.rps,
  #   ", syield: ", st.stepYield,
  #   ", srps: ",   st.stepRps,
  #   ", orgs: ",   length(man.tasks)
  # )
  # st.ips    = 0
  # st.yield  = 0
  # st.rps    = 0
  # st.syield = 0
  # st.srps   = 0
end
