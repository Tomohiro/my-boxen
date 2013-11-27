class people::tomohiro {
  include java
  include virtualbox
  include vagrant
  include iterm2::dev
  include dropbox
  include dashlane
  include skype
  include handbrake
  include pow
  include slate
  include bitcasa
  include anvil
  include bowtie
  include postgresapp
  include limechat

  class { 'firefox':
    version => '25.0.1'
  }

  class { 'packer':
    version => '0.4.0'
  }

  homebrew::tap { 'homebrew/dupes': }

  $tools = [
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
    'ifstat',
    'fortune',
    'zsh-completions'
  ]

  package { $tools:
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

  package { 'screen':
    install_options => '--HEAD'
  }
}
