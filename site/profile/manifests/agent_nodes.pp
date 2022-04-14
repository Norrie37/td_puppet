# Class: profile::agent_nodes
#
#
class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.puppet.vm':}
}
