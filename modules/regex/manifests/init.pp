class regex {
  #file { '/tmp/${site_name}':
  $uname = generate('/bin/uname', '-a')
  if $uname =~ /(\d)+\.\d+\.\d+/
{   $major_version = $1
    notify { "I have kernel version ${0} and Main kernel version is ${1}": }
  }

    $output = regsubst( 'Look at my cat picture', cat, dog )
    notify { $output: }

    $output1 = regsubst( 'Look at my cat picture', 'my .* picture', 'something more')
    $output2 = regsubst( 'Look at my cat picture', 'my (.*) picture', 'something \1')
    notify { $output1: }
    notify { $output2: }

    $interfaces = {
      'eth0' => {
        'address' => '192.168.0.1',
        'netmask' => '255.255.255.0',
        }
    }

# You can swap these values into number of values for that addresses
    $eth0_address = $interfaces['eth0']['address']
    $eth0_netmask = $interfaces['eth0']['netmask']
    notify { "Interace eth0 has address of ${eth0_address} " : }
    notify { "Interace eth0 has netmask of ${eth0_netmask} " : }
    }

