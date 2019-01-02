class ssh::install(
 String $package_name = $ssh::package_name,
) 
{ 
  package { 'SSH-PACKAGE': 
    ensure => present,
    name   => $package_name,
  }
}
