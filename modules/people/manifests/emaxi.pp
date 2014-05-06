class people::emaxi { 
 notify { 'class people::emaxi declared': }

#   $home = "/Users/${::boxen_user}"
#   $dotfiles_dir = "${boxen::config::srcdir}/dotfiles"
#   
#   repository { $dotfiles_dir:
#     source => "${::github_user}/dotfiles"
#   }
#   
#   file { "${home}/.bashrc":
#     ensure  => link,
#     target  => "${dotfiles_dir}/bashrc",
#     require => Repository[$dotfiles_dir]
#   }
}
