# Bacula packages are in EPEL on EL10
if $facts['os']['family'] == 'RedHat' and versioncmp($facts['os']['release']['major'], '10') >= 0 {
  $epel = $facts['os']['name'] ? {
    'OracleLinux' => 'oracle-epel-release-el10',
    default       => 'epel-release',
  }
  package { $epel:
    ensure => installed,
  }
}
