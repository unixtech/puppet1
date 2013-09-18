class sudo {
  file { '/etc/sudoers':
      source => 'puppet:///modules/sudo/sudo',
      mode => '0440',
      owner => 'root',
      group => 'root',
    }
}
