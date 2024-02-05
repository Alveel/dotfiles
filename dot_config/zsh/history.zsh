###########
# HISTORY #
###########

# Lines configured by zsh-newuser-install
HISTFILE=$HOME/.config/zsh/.zsh_history
HISTSIZE=100000
SAVEHIST=1000000
# End of lines configured by zsh-newuser-install

# Manual history configuration
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt inc_append_history     # add commands to HISTFILE in order of execution
setopt share_history          # share command history data
# End of manual history configuration

# vim: ft=zsh
