class people::yuhunglin::applications {
  
  # Sublime
  include sublime_text_2
  sublime_text_2::package { 'Emmet':
    source => 'sergeche/emmet-sublime'
  }
  sublime_text_2::package { 'Package Control':
  	source => 'wbond/sublime_package_control'
  }
  sublime_text_2::package { 'Color Picker':
    source => 'weslly/ColorPicker'
  }
  sublime_text_2::package { 'DocBlockr':
    source => 'spadgos/sublime-jsdocs'
  }
  file { "/Users/${::luser}/Library/Application Support/Sublime Text 2/Packages/User/Base File.sublime-settings":
    content => template('people/sublime_text_2-Base File.sublime-settings.erb'),
    force   => true,
    group   => 'wheel',
    owner   => $::luser,
    require => Package['SublimeText2'],
  }
  sublime_text_2::package { 'EditorConfig':
    source => 'sindresorhus/editorconfig-sublime'
  }
  sublime_text_2::package { 'Markdown Preview':
    source => 'revolunet/sublimetext-markdown-preview'
  }
  
  # Truecrypt
  # TODO: find another home for this (artifactory?)  
  package {'Truecrypt':
    ensure => installed,
    source => '/opt/boxen/repo/vendor/misc/FalseCrypt-7.1a.dmg', 
    provider => pkgdmg,
  }


}
