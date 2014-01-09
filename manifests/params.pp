# == Class: owncloud::params
#
# This holds all the default parameters for owncloud.
# This module should not be used directly.
#
# === Parameters
#
# It takes no parameters
#
# === Authors
#
# John Cooper <john@choffee.co.uk>
#
# === Copyright
#
# Copyright 2014 John Cooper
#
class owncloud::params {
  # Support OS
  case $::operatingsystem {
    /Debian|Ubuntu/: {
      $package_type = "apt"
    }
    default: {
      fail("Sorry but currently the owncloud module does not support ${::operatingsystem}")
    }
  }


}
