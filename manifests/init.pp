# == Class: linuxfw
#
# Base linux firewall policy
#
# === Examples
#
#  include linuxfw
#
# === Authors
#
# Rob Nelson <rnelson0@gmail.com>
#
# === Copyright
#
# Copyright 2015 Rob Nelson
#
class linuxfw {
  resources { "firewall":
    purge => true
  }

  Firewall {
    before  => Class['linuxfw::post'],
    require => Class['linuxfw::pre'],
  }

  class { ['linuxfw::pre', 'linuxfw::post']: }

  class { 'firewall': }
}
