class users::virtual {
  include users
  @user { 'abhay': ensure => present}
  @user { 'test': ensure => present}
  notify {'User abhay,test is present':}
  
  define user_dotfile($user) {
    $source = regsubst($name, "^/home/${user}/.(.*)$", "puppet:///modules/dotf/${user}-\\1")
    file { $name:
      source => $source,
      owner => $user,
      group => $user,
    }
  }

  define ssh_user($key, $dotfile=''){
    user { $name:
      ensure => present,
      managehome => true,
      shell => '/bin/zsh',
      
  }

  file {"/home/${name}/.ssh":
    ensure => directory,
    mode => '0700',
    owner => $name,

  }

  file {"/home/${name}/.ssh/.authorized_keys":
    owner => $name,
    source => "puppet:///modules/users/$name_authorized_keys,
  }

  if $dotfile {
    $filepath = regsubst($dotfile,'^(.*)$',"/home/${name}/.\\0", 'G')
    user_dotfile { $filepath:
      user => $name,
    }
  }
}

@ssh_user { 'abhay':
    key => 'xyz',
    dotfile => ['zshrc', 'vimrc', 'tmux.conf'],
  }
