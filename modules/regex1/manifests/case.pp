define regex1::case() {
  include regex1
  case $::lsbdistdescription {
    /[Uu]buntu (.+)/: {
      notify { "You have ubuntu version ${1}": }
    }
    /[cC]entOS (.+)/: {
      notify {"You have CentOS version ${1}": }
    }
    default: {}
    }
  }
