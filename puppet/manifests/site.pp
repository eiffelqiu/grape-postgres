group { "puppet":
          ensure => "present",
}

exec { "apt-update" :
  command => "/usr/bin/apt-get update",
  require => Group[puppet]
}

package { "openjdk-6-jdk" :
  ensure => present
}

include jruby
include apache2
include postgres