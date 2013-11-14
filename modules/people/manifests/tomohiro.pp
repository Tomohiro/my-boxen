class people::tomohiro {
  include java
  include virtualbox
  include packer
  include vagrant
  include firefox
  include iterm2::stable
  include dropbox
  include dashlane
  include skype
  include handbrake
  include pow
  include slate
  include bitcasa
  include anvil

  $packages = [
    'youtube-dl',
    'ssh-copy-id',
    'keychain',
    'unrar',
    'lv',
    'tree',
    'wget',
    'vim',
    'tmux',
    'w3m',
    'mercurial',
    'the_silver_searcher',
    'plenv',
    'perl-build',
    'heroku-toolbelt',
    'jq',
    'markdown',
    'ifstat'
  ]

  package { $packages:
    ensure => latest
  }

  $libraries = [
    'libxml2',
    'libxslt',
    'readline',
    'gettext'
  ]

  package { $libraries:
    ensure => latest
  }
}
