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

**To do:**
- Polybar
	- fix ram
	- fix battery prefix
	- use nerdfont for application icons for workspaces
- i3
  	- auto launch applications to specific workspaces
		- term -> 1 
		- firefox -> 2
		- obsidian -> 3
		- spotify -> 10
- Learn how to manage wireless networks in terminal
- Setup NordVPN... Integrate with polybar?
