class template {
  $site_name = 'gof'
  $bark = 'woof'
  #file { '/tmp/the_answer.txt':
    ##content => inline_template("What do you get <%= @hostname %>.\n")
    #content => template('template/answer.erb'),
    template::file { 'answer1':
      bark => 'answer1.com',
    }

    template::file { 'answer2':
      bark => 'answer2.com',
      }
  }
	
