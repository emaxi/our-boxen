class people::emaxi { 
 notify { 'class people::emaxi declared': }

  # My dotfile repository

  $home     = "/Users/${::boxen_user}"
  $bin      = "${home}/bin"
  $dotfiles = "${bin}/dotfiles"

  file { $bin:
    ensure  => directory
  }


  repository { $dotfiles:
    source  => 'emaxi/dotfiles',
    require => File[$bin]
  }

  file { "${home}/.bash_profile":
    ensure  => link,
    target  => "${dotfiles}/bashrc",
    require => Repository[$dotfiles]
  }

#  file { "${home}/.gemrc":
#    ensure  => link,
#    target  => "${dotfiles}/gemrc",
#    require => Repository[$dotfiles]
#  }

  file { "${home}/.gitconfig":
    ensure  => link,
    target  => "${dotfiles}/gitconfig",
    require => Repository[$dotfiles]
  }

  file { "${home}/bin/subl":
    ensure  => link,
    target  => "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl"
  }
}
