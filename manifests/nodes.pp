node 'userv1.myhome.internal' {
	include regex1
}

node 'fire1' {
	#include openbsd
	include exec
	#include ssh
	include cron
	include openbsd
}

node 'fire2' inherits 'fire1'{

}

node 'bsd1' {
  include dotf
}
