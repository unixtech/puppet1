class cron {
    cron { 'Sync GIT Repo':
        command => 'cd /home/git ; git fetch -u origin master',
        hour => '*',
        minute => '*/20',
        user => 'git'
      }
}


