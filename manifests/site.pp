node default {
  file { '/root/README':
    ensure => file,
    owner  => root,
    group  => root,
    mode   => '0664',
    content => 'This puppet master server hosts and manages vm-agents.',
  }
}
