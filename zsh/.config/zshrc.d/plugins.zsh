mkdir -p ~/.local/share/zinit
test -d ~/.local/share/zinit/bin || git clone https://github.com/zdharma-continuum/zinit.git ~/.local/share/zinit/bin

# Configure zinit
declare -A ZINIT
ZINIT[BIN_DIR]=~/.local/share/zinit/bin
ZINIT[HOME_DIR]=~/.local/share/zinit

source ~/.local/share/zinit/bin/zinit.zsh

export _ZL_MATCH_MODE=1

# zinit ice depth=1; zinit light romkatv/powerlevel10k

# Load sensitive envvars
if [[ -e ~/git/secret-envvars ]]; then
  eval $(~/git/secret-envvars/target/release/get-secrets)
fi

zinit ice from"gh-r" as"program" atclone"./starship init zsh > init.zsh" atpull"%atclone" src"init.zsh"
zinit light starship/starship

# Plugins
zinit load Aloxaf/fzf-tab
zinit load alanjjenkins/asdf.plugin.zsh
zinit load alanjjenkins/kube-aliases
zinit load fabiokiatkowski/exercism.plugin.zsh
zinit load joepvd/zsh-hints
zinit load macunha1/zsh-terraform
zinit load molovo/tipz
zinit load zsh-users/zsh-completions

# Install rtx version manager (replacement for asdf)
# zinit ice from"gh-r" as"command" mv"rtx* -> rtx" \
#   atclone'./rtx complete -s zsh > _rtx' atpull'%atclone'
# zinit light jdxcode/rtx
# eval "$(rtx activate zsh)"
#
# # install zoxide
# rtx global zoxide@0.9.0 &>/dev/null
# zinit light ajeetdsouza/zoxide
#
# # Setup direnv
# eval "$(rtx exec direnv -- direnv hook zsh)"
#
# # A shortcut for asdf managed direnv.
# direnv() { rtx exec direnv -- direnv "$@"; }

if ! command -v zoxide &>/dev/null; then
        if command -v &>/dev/null; then
                cargo install zoxide
        fi
fi

eval "$(zoxide init zsh)"

# Setup direnv
eval "$(asdf exec direnv hook zsh)"

# A shortcut for asdf managed direnv.
direnv() { asdf exec direnv "$@"; }


zinit snippet 'https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/aws/aws.plugin.zsh'
zinit snippet 'https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/command-not-found/command-not-found.plugin.zsh'

# For postponing loading `fzf`
zinit ice lucid wait
zinit snippet OMZP::fzf

# Fix Mcfly downloading the wrong binary
case $(uname) in
  Darwin)
    case $(uname -m) in
      x86_64)
        mcfly_os="*x86_64*darwin*"
      ;;
      arm64)
        mcfly_os="*aarch64*darwin*"
      ;;
    esac
  ;;
  Linux)
    case $(uname -m) in
      x86_64)
        mcfly_os="*x86_64*linux*musl*"
      ;;
      arm64)
        mcfly_os="*aarch64*linux*"
      ;;
    esac
  ;;
esac

# Sort completion out
# zinit wait lucid for \
 # atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
    # zdharma-continuum/fast-syntax-highlighting \
 # blockf \
    # zsh-users/zsh-completions \
# atload"!_zsh_autosuggest_start" \
    # zsh-users/zsh-autosuggestions

zinit ice lucid wait"0a" from"gh-r" as"program" atload'eval "$(mcfly init zsh)"' bpick"${mcfly_os}"
zinit light cantino/mcfly

autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
