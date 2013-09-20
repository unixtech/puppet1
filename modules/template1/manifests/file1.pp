define template1::file1($meow) {
  include template1
  $site_name = $name
  file { "/tmp/$site_name.txt":
    content => template('template1/file1.erb'),
  }
  notify { "This is file1 from template1 complete": }
  exec { "Content of file $site_name":
    command =>  "echo /tmp/$site_name.txt",
    path => '/bin:/usr/bin/',
    onlyif => "test `cat /tmp/$site_name.txt` | wc -l -lt 20"
    
    }
  notify { "Test exec command has run successfully so you can sleep now.": }

  }
