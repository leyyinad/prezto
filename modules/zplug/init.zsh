export ZPLUG_HOME=/usr/local/opt/zplug

if [[ -f $ZPLUG_HOME/init.zsh ]]; then
  source $ZPLUG_HOME/init.zsh
  source ${ZDOTDIR:-$HOME}/.zprezto/runcoms/zplug

  # Install plugins if there are plugins that have not been installed
  if ! zplug check; then
      zplug install
  fi

  # Then, source plugins and add commands to $PATH
  zplug load
fi
