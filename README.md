# My dotfiles

I use [MesloLGS Mono Nerd Font](https://www.nerdfonts.com/font-downloads)

### Packages

```
sudo apt install git gh zsh tmux ripgrep yadm eza kitty btop neofetch
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
- ### ROFI
```
git clone --depth=1 https://github.com/adi1090x/rofi.git
```
Using rofi theme repo from [adi1090x](https://github.com/adi1090x/rofi)
    - type-1, style-6
    - using tokyonight theme (/rofi/colors/tokyonight.rasi)
        - selected: -> #65bfb1 

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
    - change dir color to green
    - fix register - clipboard not working for y in i, but works while in v

- system in genearal would be nice if alongside the vault- documents, pictures and music were synced across machines
