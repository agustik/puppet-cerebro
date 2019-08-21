class cerebro::params {
  $version        = '0.8.3'
  $address        = undef
  $service_ensure = 'running'
  $service_enable = true
  $secret         = 'my-super-secret-value-to-not-have-to-use-random_password-function-as-it-does-not-ship-with-puppet'
  $hosts          = []
  $basepath       = '/'
  $cerebro_user   = 'cerebro'
  $manage_user    = true
  $package_url    = undef
  $shell = $facts['os']['family'] ? {
    'Debian' => '/usr/sbin/nologin',
    default  => '/sbin/nologin',
  }
  $java_opts      = []
  $java_home      = undef
  $basic_auth_settings = undef
  $sysconfig = $::osfamily ? {
    'Debian' => '/etc/default/cerebro',
    default  => '/etc/sysconfig/cerebro',
  }
}
