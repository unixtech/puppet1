class exec {
		exec {'Running 1st exec in the puppet':
			command => '/bin/echo I ran this command on `date +%F` >>/tmp/exec_try.txt',
      #creates => '/tmp/exec_try.txt'
      path   => "/usr/bin:/usr/sbin:/bin",
      onlyif => "test `cat /tmp/exec_try.txt | wc -l` -lt 100"
		}
	}
