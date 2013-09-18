class ssh {
  service { 'ssh':
    ensure => 'running',
    }

  file { '/etc/ssh/sshd_config':
    source => 'puppet:///modules/ssh/sshd_config',
    notify => Service['ssh'],
    owner => 'root',
    if $::osfamily == 'OpenBSD'{
    group  => 'wheel',
    else {
      group => 'root',
    }
    
    }
    }
}
