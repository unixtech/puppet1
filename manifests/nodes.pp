node 'userv1.myhome.internal' {
	include openbsd
}

node 'fire1' {
	include openbsd
}

node 'fire2' inherits 'fire1'{

}
