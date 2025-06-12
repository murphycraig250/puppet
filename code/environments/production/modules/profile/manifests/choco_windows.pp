class profile::choco_windows (
  Array[String] $apps = [],
) {

  include chocolatey

  $apps.each |String $app| {
    package { $app:
      ensure   => 'latest',
      provider => 'chocolatey',
      require  => Class['chocolatey'],
    }
  }
}
