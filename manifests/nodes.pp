node 'userv1.myhome.internal' {
	include sudo
	include exec
	include ssh
}

node 'fire1' {
	#include openbsd
	include exec
	include ssh
}

node 'fire2' inherits 'fire1'{

}
