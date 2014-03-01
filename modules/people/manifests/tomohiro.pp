class people::tomohiro {
  include virtualbox
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
    version => '27.0.1'
  }

  $taps = [
    'homebrew/dupes',
    'thoughtbot/formulae'
  ]

  homebrew::tap { $taps: }

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
    'zsh-completions',
    'tig',
    'osxutils',
    'boot2docker',
    'gitsh'
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

  # Workaround
  # readlineの接続先直す | iii ThreeTreesLight
  # http://threetreeslight.com/post/58786169382/readline
  exec{ 'replace-readline-of-ruby' :
    command => "find /opt/boxen/rbenv -name readline.bundle -exec install_name_tool -change /usr/lib/libedit.3.dylib `find /opt/boxen -name libreadline.dylib` {} \\;"
  }

  osx_chsh { $::luser:
    shell => '/bin/zsh';
  }
}
