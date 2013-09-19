class cron {
  cron { 'Sync GIT Repo':
    command => 'cd /home/git/git ; git fetch -u origin master',
            hour => '*',
            minute => '*/1',
            user => 'git'
  }
}


