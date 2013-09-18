# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "2.1.0"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",    "1.0.0"
github "gcc",        "1.0.0"
github "git",        "1.2.2"
github "homebrew",   "1.4.1"
github "hub",        "1.0.0"
github "inifile",    "0.9.0", :repo => "cprice-puppet/puppetlabs-inifile"
github "nginx",      "1.4.0"
github "nodejs",     "3.2.10"
github "repository", "2.2.0"
github "ruby",       "5.1.0"
github "stdlib",     "4.0.2", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "nvm",        "1.0.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
github "sublime_text_2", "1.1.1"
github "java", "1.1.0"
# Until pull requests get merged
# github "osx", "1.3.0"
mod "osx", :git => 'git://github.com/yuhunglin/puppet-osx.git'
github "iterm2", "1.0.2"
github "bash", "1.1.0"
github "dropbox", "1.1.0"
github "caffeine", "1.0.0"
github "vlc", "1.0.1"
github "firefox", "1.0.6"
github "adium", "1.1.1"
github "imageoptim", "0.0.2"
github "chrome", "1.1.0"
github "skype", "1.0.2"
github "crashplan", "1.0.1"
github "thunderbird", "1.0.1"
github "intellij", "1.2.0"
github "heroku", "2.0.0"