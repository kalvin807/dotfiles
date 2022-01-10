# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Use antigen
source $(brew --prefix)/share/antigen/antigen.zsh

# Use Oh-My-Zsh
antigen use oh-my-zsh

# Set theme
antigen theme romkatv/powerlevel10k

# Set plugins
antigen bundle git
antigen bundle macos
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

# alias
alias code="open -a Visual\ Studio\ Code.app"

# ls
TREE_IGNORE="cache|log|logs|node_modules|vendor"

alias ls=' exa --group-directories-first'
alias la=' ls -a'
alias ll=' ls --git -l'
alias lt=' ls --tree -D -L 2 -I ${TREE_IGNORE}'
alias ltt=' ls --tree -D -L 3 -I ${TREE_IGNORE}'
alias lttt=' ls --tree -D -L 4 -I ${TREE_IGNORE}'
alias ltttt=' ls --tree -D -L 5 -I ${TREE_IGNORE}'

# vim nvim
alias vim=nvim
alias vi=nvim
alias v=nvim

# Editor
export VISUAL=nvim

# Setup
eval "$(fnm env --use-on-cd)"
eval "$(pyenv init -)"
eval "$(rbenv init -)"
eval "$(direnv hook zsh)"
eval "$(mcfly init zsh)"

export GOPATH=/Users/$USER/go
export PATH="/Users/kal/.local/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/kal/.sdkman"
[[ -s "/Users/kal/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/kal/.sdkman/bin/sdkman-init.sh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kal/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/kal/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kal/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/kal/google-cloud-sdk/completion.zsh.inc'; fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
