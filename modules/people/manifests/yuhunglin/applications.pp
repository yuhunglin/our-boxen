class people::yuhunglin::applications {
  notify { 'class people::yuhunglin::applications declared': }
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
  sublime_text_2::package { 'EditorConfig':
    source => 'sindresorhus/editorconfig-sublime'
  }
  sublime_text_2::package { 'Markdown Preview':
    source => 'revolunet/sublimetext-markdown-preview'
  }
  sublime_text_2::package { 'Puppet':
    source => 'russCloak/SublimePuppet'
  }
  sublime_text_2::package { 'SCSS':
    source => 'MarioRicalde/SCSS.tmbundle'
  }
  sublime_text_2::package { 'SideBarEnhancements':
    source => 'titoBouzout/SideBarEnhancements'
  }
  sublime_text_2::package { 'SublimeLinter':
    source => 'SublimeLinter/SublimeLinter'
  }
  sublime_text_2::package { 'TrailingSpaces':
    source => 'SublimeText/TrailingSpaces'
  }

  # Java
  include java

  # Truecrypt
  # TODO: find another home for this (artifactory?)
  package {'Truecrypt':
    ensure => installed,
    source => '/opt/boxen/repo/vendor/misc/FalseCrypt-7.1a.dmg', 
    provider => pkgdmg,
  }

  #iTerm2
  include iterm2::stable

  #Bash
  include bash
  include bash::completion

  #Dropbox
  include dropbox

  #Caffeine
  include caffeine

  #VLC
  include vlc

  #Firefox
  include firefox

  #Adium
  include adium

  #ImageOptim
  include imageoptim

  #Chrome
  include chrome

  #Skype
  include skype

  #CrashPlan
  include crashplan

  #Thunderbird
  include thunderbird
}
