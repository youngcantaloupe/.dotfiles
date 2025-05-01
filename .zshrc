# ─── Set PATH ─────────────────────────────────────────────────────────────────
# Core paths -> user-specific paths
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
export PATH="$PATH:/snap/bin"                      # Snap apps
export PATH="$PATH:$HOME/.local/bin"               # Your custom scripts
export PATH="$PATH:$HOME/.spicetify"               # Spicetify scripts
export PATH="$PATH:/usr/local/go/bin"              # Go binaries
export TERMINAL=kitty

# ─── Remove duplicates ────────────────────────────────────────────────────────
# Zsh to treat PATH as unique array (thanks zsh)
typeset -U PATH

# ─── Zap Plugin Manager ───────────────────────────────────────────────────────
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && \
    source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

# ─── Zsh Plugins ──────────────────────────────────────────────────────────────
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "zsh-users/zsh-completions"

# ─── Custom Plugins ───────────────────────────────────────────────────────────
plug "$HOME/.config/zsh/starship.zsh"
plug "$HOME/.config/zsh/aliases.zsh"
plug "$HOME/.config/zsh/spicetify.zsh"
plug "$HOME/.config/zsh/history.zsh"
plug "$HOME/.config/zsh/completion.zsh"

# ─── Zsh Completion System ────────────────────────────────────────────────────
autoload -Uz compinit
compinit

