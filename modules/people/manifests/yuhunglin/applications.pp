class people::yuhunglin::applications {
  include sublime_text_2
  sublime_text_2::package { 'Emmet':
    source => 'sergeche/emmet-sublime'
  }
  
  package {'Truecrypt':
    ensure => installed,
    source => 'https://github.com/yuhunglin/my-boxen/tree/master/vendor/misc/FalseCrypt-7.1a.dmg',
    provider => pkgdmg,
  }
}
