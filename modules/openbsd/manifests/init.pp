class openbsd {
	file { '/root/.zshrc' :
		source => 'puppet:///modules/openbsd/zshrc_openbsd',
#		notify => 'ZSHRC for openbsd has been deployed'
}
	file { '/root/.vimrc'	:	source => 'puppet:///modules/openbsd/vimrc1', owner => 'root', mode => 0644, }
	file { '/root/.oh-my-zsh'	: source => 'puppet:///modules/openbsd/oh-my-zsh', owner => 'root', ensure => directory, recurse => true, force => true, mode => 0644,  }
	file { '/root/.vim'	: source => 'puppet:///modules/openbsd/files/vim', owner => 'root',  ensure => directory, recurse => true, force => true, mode => 0644,  }


	user {	'art':
		ensure	=> present,
		comment	=> 'Art Vandelay',
		home	=> '/home/art',
		managehome	=> true,
		password	=> 'art',
		}
}
