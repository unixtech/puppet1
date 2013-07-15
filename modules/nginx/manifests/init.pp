class nginx {
	package { 'nginx':
		ensure => installed,
	}

	service { 'nginx':
		ensure => running,
		require => package['nginx'],

	}
}
