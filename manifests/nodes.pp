node 'userv1.myhome.internal' {
	include nginx
}

node 'fire1' {
	include openbsd
}

node 'fire2' inherits 'fire1'{

}
