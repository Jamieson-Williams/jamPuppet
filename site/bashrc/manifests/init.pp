class bashrc {
  $str = 'PS1="\[\033[0;32m\][\w]\[\033[1;36m\]\n\u@\h:$\[\033[0m\] "
          if [ -f /etc/bashrc ]; then
            . /etc/bashrc
            fi
          PATH="$HOME/.local/bin:$HOME/bin:$PATH"
          export PATH
          '

  file { '/home/jamieson/.bashrc':
    ensure  => present,
    content => $str,
  }
} 
