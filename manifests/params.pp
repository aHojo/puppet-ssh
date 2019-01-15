class ssh::params {

#  unless $facts['os']['facts'] == 'Debian' {
#    $package_name = 'openssh-server'
#    $service_name = 'sshd'
#  }
#  if $facts['os']['family'] == 'Debian' {
#    $package_name = 'openssh-server'
#    $service_name = 'ssh'
#  }
#  elsif $facts['os']['family'] == 'RedHat' {
#    $package_name = 'openssh-server'
#    $service_name = 'sshd'
#  }
#  else {
#    fail("${facts['os']['family']} is not supported.")
#  }

  $permit_root_login = true 
  $port = 22  
  case $facts['os']['family'] {
    
  'Debian': {
      $package_name = 'openssh-server'
      $service_name = 'ssh'
    }
    
   'RedHat': {
      $package_name = 'openssh-server'
      $service_name = 'sshd'
    }
    
    'default': {
      fail("${facts['os']['family']} is not supported.")
    }
  }

}
