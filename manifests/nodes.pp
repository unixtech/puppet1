node 'userv1.myhome.internal' {
	include dotf
}

node 'fire1' {
	include openbsd
	include exec
}

node 'fire2' inherits 'fire1'{

}
