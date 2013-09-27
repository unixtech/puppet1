define regex1::selective() {
  include regex1
  $APTORRPM = $::lsbdistdescription ? {
    /[uU]buntu .+/ => "APT has Holy cow powers",
    /[Cc]entOS .+/=> "RPM is not bad either",
    default => 'UNKNOWN Power should be dealt with',
  }
  notify { "Nice with ${APTORRPM}." : }
}
