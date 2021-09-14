class motd {
  $motd_hash = {
    'fqdn'          => $facts['fqdn'],
    'os_family'     => $facts['os']['family'],
    'os_name'       => $facts['os']['name'],
    'os_release'    => $facts['os']['release']['full'],
    'ip'            => $facts['networking']['ip'],
    'system_uptime' => $facts['system_uptime']['uptime'],
  }
 
  file { '/etc/motd':
    ensure  => file,
    content => epp('motd/motd.epp',$motd_hash),
  }
}
