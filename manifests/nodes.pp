node 'userv1.myhome.internal' {
	include sudo
	include exec
	include ssh
	include template
}

node 'fire1' {
	#include openbsd
	include exec
	include ssh
	include cron
}

node 'fire2' inherits 'fire1'{

}
