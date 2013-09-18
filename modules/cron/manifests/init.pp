class cron {
    cron { 'Sync GIT Repo':
        command => 'git fetch -u origin master',
        hour => '05',
        minute => '00',
        user => 'git'
      }
}


