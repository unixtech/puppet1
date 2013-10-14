class openbsd {

  $OSFAM = $::osfamily? {
    OpenBSD => 'wheel',
    default => 'root'
  }

  $HOSTPF = $::hostname? {
    fire1 => 'puppet:///modules/openbsd/pf_fire1.conf',
    fire2 => 'puppet:///modules/openbsd/pf_fire2.conf'
  }
  $HOSTRC = $::hostname? {
    fire1 => 'puppet:///modules/openbsd/rc_fire1.conf',
    fire2 => 'puppet:///modules/openbsd/rc_fire2.conf'
  }
	#file { '/root/.zshrc' :
		#source => 'puppet:///modules/openbsd/zshrc_openbsd',
##		notify => 'ZSHRC for openbsd has been deployed'
#}
	#file { '/root/.vimrc'	:	source => 'puppet:///modules/openbsd/vimrc', owner => 'root',			}
	#file { '/root/.oh-my-zsh'	: source => 'puppet:///modules/openbsd/oh-my-zsh', owner => 'root', ensure => directory, recurse => true, force => true, mode => 0644,  }
	#file{ '/root/.vim'	: source => 'puppet:///modules/openbsd/vim', owner => 'root',  ensure => directory, recurse => true, force => true, mode => 0644,  }
  file{ '/etc/pkg.conf':
    source => 'puppet:///modules/openbsd/pkg.conf',
    owner => 'root',
    group => $OSFAM,
    ensure => 'present'
    }
  file{ '/etc/sysctl.conf':
    source => 'puppet:///modules/openbsd/sysctl.conf',
    owner => 'root',
    group => $OSFAM,
    ensure => 'present'
    }

  file{ '/etc/pf.conf':
    source => $HOSTPF,
    owner => 'root',
    group => $OSFAM,
    ensure => 'present'
    }

  file{ '/etc/rc.conf.local':
    source => $HOSTRC,
    owner => 'root',
    group => $OSFAM,
    ensure => 'present'
    }
  file{ '/etc/rc.conf.local':
    source => $HOSTRC,
    owner => 'root',
    group => $OSFAM,
    ensure => 'present'
    }
	user {	'art':
		ensure	=> present,
		comment	=> 'Art Vandelay',
		home	=> '/home/art',
		managehome	=> true,
		password	=> 'art',
		}

#Define Cron job to restart pflogd every other day
  cron{'Restart pflogd day':
    command => '/etc/rc.d/pflogd restart',
    hour => 23,
    user => root
    
    }

### Initial Packets
#
	package { [ 'unzip',
							'unrar',
              'openvpn',
              'pftop',
              'pfstat',
              'unbound',
              'nsd3',
              'squid',
              'vsftpd'
	
	]:
	ensure => installed,
	#notify => "packages $package has been installed on fire1"	
		}


		exec {'Check the diskspace and Report if back tryit':
			command => '/bin/echo I ran this command on `date +%F` >>/tmp/exec_try.txt',
      #creates => '/tmp/exec_try.txt'
      path   => "/usr/bin:/usr/sbin:/bin",
      onlyif => "test `cat /tmp/exec_try.txt | wc -l` -lt 100"
		}
}
