define define1::crony( $hour, $minute) {
  #Set up cron job for '/tmp' files
  include define1
  cron { "Run ${name}":
      command => "echo tararara >> /tmp/cron_pup.cr",
      hour => $hour,
      minute => $minute,
    }
  }
