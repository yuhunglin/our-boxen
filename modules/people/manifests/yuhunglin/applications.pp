class people::yuhunglin::applications {
  include sublime_text_2
  sublime_text_2::package { 'Emmet':
    source => 'sergeche/emmet-sublime'
  }
  
  package {'Truecrypt':
    ensure => installed,
    source => 'http://faro.puppetlabs.lan/gary/TrueCrypt-7.1a.dmg'
    provider => appdmg,
  }
}
