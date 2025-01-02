# My dotfiles

### Packages

```
sudo apt install bat brightnessctl btop curl eza feh flameshot fzf gh git i3 kitty neofetch pavucontrol picom polybar playerctl ripgrep rofi yadm zsh
```

### Fonts (because i always forget)

I use [MesloLGS Mono Nerd Font](https://www.nerdfonts.com/font-downloads)

1. Download and extract
   - `mkdir Meslo`
   - `unzip Meslo.zip -d Meslo`
2. Delete unused fonts, keep:
   - MesloLGSNerdFont
   - MesloLGSNerdFontMono
   - MesloLGSNerdFontPropo
3. Move Meslo to fonts:
   - /usr/share/fonts/ — fonts for all users
   - ~/.local/share/fonts/ — fonts for particular user
4. Good enough for now, kitty.conf sets font
   - When dotfiles have been cloned with yadm, you can see what font is active in kitty with:

```
grep -i 'font_family' ~/.config/kitty/kitty.conf
```

### Shell

1. Change to zsh

```
chsh -s /bin/zsh
```

### Neovim

Tools for installing nvim

**NOTE:** Specific nvim info can be found in `.config/nvim/README.md`

```
sudo apt-get install ninja-build gettext cmake unzip curl build-essential
```

**NOTE**: Some plugins require v0.10.0

#### Installing

1. Clone nvim into /usr/local/bin
   1. chmod a+x neovim

```
sudo git clone https://github.com/neovim/neovim
```

2. Make for install

```
sudo git checkout stable
```

##### Build type

```
sudo make CMAKE_BUILD_TYPE=RelWithDebInfo
```

*RelWithDebInfo: optimized, *with* debug info, but no debug (output) code or asserts.*

```
sudo make CMAKE_BUILD_TYPE=Release
```

_Release: high optimization level, no debug info, code or asserts._

```
sudo make install
```

### Obsidian

1. Install through snap.

### Spotify/ [spicetify](https://spicetify.app/docs/advanced-usage/installation/)

**NOTE:** Spotify installed through snap cannot be modified. Spicetify will not work.

1. If installed with snap:

```
snap remove spotify
```

2. Install spotify using `apt`

```
curl -sS https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client
```

3. After install with `apt`, add read and write perms:

```
sudo chmod a+wr /usr/share/spotify
sudo chmod a+wr /usr/share/spotify/Apps -R
```

**NOTE:** could be installed somewhere else, ubuntu installs here though.

4. Install Spicetify CLI, select `y` to install marketplace

```
curl -fsSL https://raw.githubusercontent.com/spicetify/cli/main/install.sh | sh
```

```
curl -fsSL https://raw.githubusercontent.com/spicetify/marketplace/main/resources/install.sh | sh
```

5. run `spicetify` to generate config file
6. Confirm config is generated and run:

```
spicetify backup apply enable-devtools
```

### LazyGit

```
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
```

### Starship

```
curl -sS https://starship.rs/install.sh | sh
```

### Zap

```
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1
```

### Tmux

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

- tmux.conf requires this plugin manager

### ROFI

1. Clone adi1090x's themes

```
git clone --depth=1 https://github.com/adi1090x/rofi.git
```

Using rofi theme repo from [adi1090x](https://github.com/adi1090x/rofi) - type-1, style-6 - using tokyonight theme (/rofi/colors/tokyonight.rasi) - selected: -> #65bfb1

2. Generate config.rasi

```
rofi -dump-config > ~/.config/rofi/config.rasi
```

3. Make sure that `./setup.sh` has x perms and excute `./setup.sh`
   **NOTE:** Either do this before loading into i3, or change the keybinds for dmenu back to the default until this is setup.

### yadm

**Note:** Not sure if I'm using yadm correctly initializing my entire home dir as a repo, maybe some other way to include the dotfiles from home while only making .config a repo?

1. Now should be set for cloning dotfiles

```
yadm clone https://github.com/youngcantaloupe/.dotfiles
```

- May have not updated files that already exist (.zshrc)

```
yadm checkout /home/kakashi
```

### [Glow](https://github.com/charmbracelet/glow)

Used to render markdown nicely in the terminal

```
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://repo.charm.sh/apt/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/charm.gpg
echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" | sudo tee /etc/apt/sources.list.d/charm.list
sudo apt update && sudo apt install glow
```

### [Gum](https://github.com/charmbracelet/gum)

**NOTE:** Used for a few scripts some alias's will not work without

1. Install

```
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://repo.charm.sh/apt/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/charm.gpg
echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" | sudo tee /etc/apt/sources.list.d/charm.list
sudo apt update && sudo apt install gum
```

### [textfox](https://github.com/adriankarlen/textfox)

1. Install
   - Clone or download zip from github
   - In Firefox browser go to `about:profiles`
     - Open root dir in default profile
   - Move `chrome` and `user.js` from textfox->root
2. Config
   - Works best with [sideberry](https://addons.mozilla.org/en-US/firefox/addon/sidebery/) (firefox extension)
     My only tweak is changing the banner to match my computer name.

### Notes:

1. Config for my laptop is under branch _tsukuyomi_
2. Other info / documentation can be found at [my blog](https://publish.obsidian.md/porter-blog/Blog/Blog-Home) under Linux MOC
3. To view set alias's -> `alias`
   - For these to work update `PATH` in `~/.config/zsh`
4. Python LSP for nvim -> [Pyright](https://github.com/microsoft/pyright/blob/main/docs/installation.md)
   - npm is required for install
     - `sudo apt install nodejs npm`
   - Pyright install
     - `sudo npm install -g pyright`
5. Audio currently managed through `setaudio` script _(requires gum)_ while I learn more about polybar

**To do:**

- Polybar
  - use nerdfont for application icons for workspaces
    - add bluetooth module
    - dropdown widgets would be nice for wifi, bluetooth, and time -> calendar
      - i believe wifi can be done with networkmanager-dmenu
- i3
  - Amaterasu suspend is off -> write script to suspend
  - Tsukuyomi suspend is on -> disable, write script to suspend
- bluetoothctl or (gnome bluetooth?)
  - research how to use + polybar integration
- networkmanager-dmenu
  - how do i even install??
  - this should help with the polybar integrations though
- neovim
  - undotree

## Other

#### `.tmux.conf`

```bash
# set 256 colors, in tmux
#set -sa terminal-overrides ",xterm*:Tc"
set -g mouse on

# other tmux config
set-option -g status-position top

# set prefix
unbind C-b
set -g prefix C-Space
bind C-Space send-prefix

# start windows and panes at 1, not 0
set -g base-index 1
set -g pane-base-index 1
set-window-option -g pane-base-index 1
set-option -g renumber-windows on

# open new panes in current directory
bind '"' split-window -v -c "#{pane_current_path}"
bind % split-window -h -c "#{pane_current_path}"

# load plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'christoomey/vim-tmux-navigator'
set -g @plugin "janoamaral/tokyo-night-tmux"
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @resurrect-strategy-nvim 'session'
#set -g @plugin 'tmux-plugins/tmux-continuum'
set -g @continuum-restore 'on'

# theme config
set -g @tokyo-night-tmux_window_id_style hsquare
set -g @tokyo-night-tmux_pane_id_style hsquare
set -g @tokyo-night-tmux_zoom_id_style hsquare
set -g @tokyo-night-tmux_show_datetime 0
set -g @tokyo-night-tmux_date_format MYD
set -g @tokyo-night-tmux_time_format 12H
set -g @tokyo-night-tmux_show_path 1
set -g @tokyo-night-tmux_path_format relative

# open panes in current directory
bind '"' split-window -v -c "#{pane_current_path}"
bind % split-window -h -c "#{pane_current_path}"

run '~/.tmux/plugins/tpm/tpm'
```

#### `.zsh.rc`

```lua
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
```
