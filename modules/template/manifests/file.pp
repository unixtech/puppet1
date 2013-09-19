define template::file($bark) {
  include template
  $site_name = $name
  file { "/tmp/${site_name}.txt":
  content => template('template/answer.erb'),
    #notify => "We have DEFINITION",
  }
  notify { "You have defined DEFINITION for ${site_name}": }
}
