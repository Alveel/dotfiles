####################
# CUSTOM FUNCTIONS #
####################

# ripgrep with fzf
function frg {
  result=$(rg --ignore-case --color=always --line-number --no-heading "$@" |
    fzf --ansi \
        --color 'hl:-1:underline,hl+:-1:underline:reverse' \
        --delimiter ':' \
        --preview "bat --color=always {1} --theme='Solarized (light)' --highlight-line {2}" \
        --preview-window 'up,60%,border-bottom,+{2}+3/3,~3')
  file=${result%%:*}
  linenumber=$(echo "${result}" | cut -d: -f2)
  if [[ -n "$file" ]]; then
    $EDITOR +"${linenumber}" "$file"
  fi
}

# Interactive shutdown/reboot
custom_shutdown() {
  read "confirm?Do you really want to ${1}? "
  if [[ "$confirm" =~ ^[Yy]$ ]]
  then
    "$1"
  fi
}

# Default DPI
dedpi() {
  sed -i 's/155648/98304/' $HOME/.xsettingsd
  /usr/bin/xrdb -merge $HOME/.Xresources
}

# HiDPI
hidpi() {
  sed -i 's/98304/155648/' $HOME/.xsettingsd
  /usr/bin/xrdb -merge $HOME/.Xresources.hidpi
}

# OpenShift Login
ocl() {
  cluster="$1"
  if [ -z "$cluster" ]; then
    echo "You must specify a cluster as a parameter"
    exit
  fi
  kubeconfig="${KUBECONFIG:-$HOME/.kube/config}"
  oc login --server="https://api-ext.${cluster}.nationaalarchief.net:6443" -u akik
  sed -i '/current-context: /d' "$kubeconfig"
  kubie ctx "default/api-ext-${cluster}-nationaalarchief-net:6443/akik"
}

