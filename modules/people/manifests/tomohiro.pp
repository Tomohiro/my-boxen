class people::tomohiro {
  #include java
  include virtualbox
  include packer
  include vagrant
  include firefox
  include iterm2::stable
  include dropbox

  $packages = [
    'youtube-dl',
    'ssh-copy-id',
    'keychain',
    'unrar',
    'lv',
    'tree',
    'wget'
  ]

  package { $packages:
    ensure => latest
  }
}
