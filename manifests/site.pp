node default {
  
}

node "centos7-host.subnet04030040.vcn04030040.oraclevcn.com" {
  file { '/root/README':
    ensure  => file,
    owner   => root,
    group   => root,
    mode    => '0664',
    content => 'This puppet master server hosts and manages vm-agents.',
  }
  include role::master_server
}

node /^web/ {
  file { '/root/README':
    ensure  => file,
    owner   => root,
    group   => root,
    mode    => '0664',
    content => 'This web agent hosts the nginx service.',
  }
  include role::web_server
}


