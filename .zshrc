# Set dir to store & source file
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

~/Projects/Bash/banneramaterasu.sh

# Zsh plugins
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "zsh-users/zsh-completions"

# Custom plugins
plug "$HOME/.config/zsh/starship.zsh"
plug "$HOME/.config/zsh/aliases.zsh"
plug "$HOME/.config/zsh/spicetify.zsh"
plug "$HOME/.config/zsh/history.zsh"
plug "$HOME/.config/zsh/completion.zsh"

# Load and initialise completion system
autoload -Uz compinit
compinit
