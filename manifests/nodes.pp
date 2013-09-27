node 'userv1.myhome.internal' {
	include regex1
	include users
}

node 'fire1' {
	#include openbsd
	include exec
	include ssh
	include cron
}

node 'fire2' inherits 'fire1'{

}
