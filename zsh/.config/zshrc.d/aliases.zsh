# Easier navigation
# .., ..., ...., ....., and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias -- -="cd -"

alias cdd="cd ~/Downloads/"
alias cdg="cd ~/git/"
alias cdot="cd ~/.local/share/chezmoi"
alias cdgo="cd \$GOPATH"

# Generate SHA-512 Password hash
alias pwhash='python -c "import crypt,getpass; print(crypt.crypt(getpass.getpass(), crypt.mksalt(crypt.METHOD_SHA512)))"'

# Archlinux aliases
alias makepkg='chrt --idle 0 ionice -c idle makepkg'

# Override Docker with Podman
if command -v podman &>/dev/null; then
  alias fpm='podman run --rm -v "${WORKSPACE}:/source" -v /etc/passwd:/etc/passwd:ro --user=$(id -u):$(id -g) claranet/fpm'
else
  alias fpm='docker run --rm -v "${WORKSPACE}:/source" -v /etc/passwd:/etc/passwd:ro --user=$(id -u):$(id -g) claranet/fpm'
fi

if command -v podman &>/dev/null; then
  alias saws="podman run -it --rm -e AWS_DEEFAULT_REGION=$AWS_DEFAULT_REGION AWS_ACCESS_KEY_ID=$AWS_DEFAULT_REGION AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY AWS_SESSION_TOKEN=$AWS_SESSION_TOKEN AWS_SECURITY_TOKEN=$AWS_SECURITY_TOKEN ASSUMED_ROLE=$ASSUMED_ROLE -v $HOME/.aws:/root/.aws joshdvir/saws"
else
  alias saws="docker run -it --rm -e AWS_DEEFAULT_REGION=$AWS_DEFAULT_REGION AWS_ACCESS_KEY_ID=$AWS_DEFAULT_REGION AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY AWS_SESSION_TOKEN=$AWS_SESSION_TOKEN AWS_SECURITY_TOKEN=$AWS_SECURITY_TOKEN ASSUMED_ROLE=$ASSUMED_ROLE -v $HOME/.aws:/root/.aws joshdvir/saws"
fi

# allow for stupid naming of fd on Ubuntu based distros...
if command -v fdfind &>/dev/null; then
  alias fd="fdfind"
fi

# SSH key aliases
alias key='ssh-add ~/.ssh/ssh_keys/gitkey'
alias keycl='ssh-add -D'

# Use Neovim instead of Vim
if command -v nvim &>/dev/null; then
  alias vim='nvim'
  alias vi='nvim'
elif command -v vim &>/dev/null; then
  alias vi='vim'
fi

# Misc aliases
alias j='just'

if uname -a | grep 'Darwin' &> /dev/null; then
  alias ll='ls -G';
  alias ls='ls -G';
  if command -v tree &>/dev/null; then
    alias lt='tree -C';
  fi
else
  if command -v exa &>/dev/null; then
    alias ll='exa -l --grid --git -a';
    alias ls='exa -a';
    alias lt='exa --tree --git --long';
  else
    alias ll='ls --color=auto -l';
    alias ls='ls --color=auto';
    if command -v tree &>/dev/null; then
      alias lt='tree -C';
    fi
  fi
fi

# Kubernetes aliases
# alias watchhr="watch 'kubectl get hr -A'"
