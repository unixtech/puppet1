class ssh {
  service { 'ssh':
    ensure => 'running',
    }


$OSFAM = $::osfamily? {
  OpenBSD => 'wheel',
  default => 'root',
}

  file { '/etc/ssh/sshd_config':
    source => 'puppet:///modules/ssh/sshd_config',
    notify => Service['ssh'],
    owner => 'root',
    group  => $OSFAM,

    }
  file { '/etc/ssh/ssh_config':
    source => 'puppet:///modules/ssh/ssh_config',
    notify => Service['ssh'],
    owner => 'root',
    group  => $OSFAM,
  }
}
