class people::yuhunglin::application_settings {
  notify { 'class people::yuhunglin::application_settings declared': } 
  # Sublime 2
  file { "/Users/${::luser}/Library/Application Support/Sublime Text 2/Packages/User/Base File.sublime-settings":
    content => template('people/sublime_text_2-Base File.sublime-settings.erb'),
    force   => true,
    group   => 'wheel',
    owner   => $::luser,
    require => Package['SublimeText2'],
  }
  file { "/Users/${::luser}/Library/Application Support/Sublime Text 2/Packages/User/SublimeLinter.sublime-settings":
    content => template('people/sublime_text_2-SublimeLinter.sublime-settings.erb'),
    force   => true,
    group   => 'wheel',
    owner   => $::luser,
    require => Package['SublimeText2'],
  }
  #TODO: license file with settings logic + truecrypt?: Library/Application Support/Sublime Text 2/Settings/License.sublime_license
  
  #Git
  git::config::global{'user.name':
    value => 'Yu-Hung Lin',
  }
  git::config::global{'user.email':
    value => 'yuhung@yuhunglin.com',
  }
  git::config::global{'alias.co':
    value => 'checkout',
  }
  git::config::global{'color.ui':
    value => '1',
  }
  git::config::global{'core.autocrlf':
    value => 'input',
  }
  git::config::global{'branch.autosetupmerge':
    value => 'true',
  }
  git::config::global{'push.default':
    value => 'upstream',
  }
}