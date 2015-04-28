# Manage sysctl value
#
# This type exists for compatability with duritong/puppet-sysctl's sysctl::value type
#
# It not only manages the entry within
# /etc/sysctl.conf, but also checks the
# current active version.
#
# Parameters
#
# * value: to set.
# * key Key to set, default: $name
# * target: an alternative target for your sysctl values.
define sysctl::value (
  $value,
  $key    = $name,
  $target = undef,
) {
  sysctl { $key:
    value  => $value,
    target => $target,
  }
}
