class cron {
    cron { 'Sync GIT Repo':
        command => 'git fetch -u origin master',
        hour => '*',
        minute => '*/20',
        user => 'git'
      }
}


