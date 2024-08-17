# My dotfiles

### Packages
```
sudo apt install bat brightnessctl btop curl eza feh fzf gh git i3 kitty neofetch pavucontrol picom polybar ripgrep rofi yadm zsh
```
### Glow
```
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://repo.charm.sh/apt/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/charm.gpg
echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" | sudo tee /etc/apt/sources.list.d/charm.list
sudo apt update && sudo apt install glow
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
*Release: high optimization level, no debug info, code or asserts.*

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
```
git clone --depth=1 https://github.com/adi1090x/rofi.git
```
Using rofi theme repo from [adi1090x](https://github.com/adi1090x/rofi)
    - type-1, style-6
    - using tokyonight theme (/rofi/colors/tokyonight.rasi)
        - selected: -> #65bfb1 
### yadm
1. Now should be set for cloning dotfiles
```
yadm clone https://github.com/youngcantaloupe/.dotfiles
```
    - May have not updated files that already exist (.zshrc)
```
yadm checkout /home/kakashi
```

**To do:**
- Polybar
	- use nerdfont for application icons for workspaces
    - add bluetooth module
    - dropdown widgets would be nice for wifi, bluetooth, and time -> calendar
        - i believe wifi can be done with networkmanager-dmenu
- i3
  	- auto launch applications to specific workspaces
		- term -> 1 
		- firefox -> 2
		- obsidian -> 3
		- spotify -> 10
    - configure suspend - frozen after lid close
- bluetoothctl or (gnome bluetooth?)
    - research how to use + polybar integration
- networkmanager-dmenu
    - how do i even install??
    - this should help with the polybar integrations though
- tmux
    - Tate - learn managing sessions
- obsidian nvim
    - learn syntax to get correct formatted output
    - create inbox - default location for new notes
    - add color to bold/italics
    - organize filetree / implement tagging system for easy telescope searches
    - templates 
    - still need to implement way to sync vault to Amaterasu
- neovim
    - undotree

- system in genearal would be nice if alongside the vault- documents, pictures and music were synced across machines
