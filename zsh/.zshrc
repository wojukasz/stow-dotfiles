# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.config/zshrc.d/completion.zsh
source ~/.config/zshrc.d/environment_vars.zsh
source ~/.config/zshrc.d/powerlevel10k.zsh
source ~/.config/zshrc.d/aliases.zsh
source ~/.config/zshrc.d/plugins.zsh
source ~/.config/zshrc.d/bash_helpers.zsh
source ~/.config/zshrc.d/zsh_functions.zsh
source ~/.config/zshrc.d/zsh_settings.zsh
if [ -e $HOME/.nix-profile/etc/profile.d/nix.sh ]; then . $HOME/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Start SSH agent in the background (suppress output)
eval $(ssh-agent -s) >/dev/null

# Add SSH key to the agent (suppress output)
ssh-add ~/.ssh/gitkey >/dev/null 2>&1

# Function to start tmux session
function start_tmux() {
    if command -v tmux &> /dev/null; then
        # Check conditions to start a new tmux session
        if [[ $HOST == "zen" && -z "$TMUX" ]]; then
            (tmux -2 attach || exec tmux)
        fi
    fi
}

# Call the function to start tmux
start_tmux