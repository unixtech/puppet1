class dotf {
  $packages = [ 'editors/vim_nox11', 'devel/git', 'lang/python32', 'sysutils/tmux' ]

  package { $packages:
    ensure => 'installed',
    provider => "ports",

  }
  
}
