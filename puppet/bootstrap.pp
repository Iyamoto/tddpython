# Bootstrap

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

package { 'requests':
  provider => pip,
  ensure  => installed,
  require  => Package['python-pip']
}

package { 'django':
  provider => pip,
  ensure  => installed,
  require  => Package['python-pip']
}

