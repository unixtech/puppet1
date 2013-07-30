class exec {
		exec {'Running 1st exec in the puppet':
			command => '/bin/echo I ran this command on `date +%F` >/tmp/exec_try.txt'
		}
	}
