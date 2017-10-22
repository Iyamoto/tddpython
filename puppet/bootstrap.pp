# Bootstrap

include stdlib

notify { 'greeting':
  message => 'Starting Puppet'
}

package { 'git':
  ensure  => installed,
}

package { 'wget':
  ensure  => installed,
}

package { 'jq':
  ensure  => installed,
}

package { 'python':
  ensure  => installed,
}

package { 'python-pip':
  ensure  => installed,
  require  => [ Package['python'], ],
}

ensure_packages(['requests'], {
         ensure   => present,
         provider => 'pip',
         require  => [ Package['python-pip'], ],
  })
