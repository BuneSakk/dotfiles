# My Configs 🚀

Welcome to **dotfiles** - This repo includes my dots, which I am currently managing using Stow to crete symlinks and version controlling it using git so that I could easily revert back in case of a mistake or I could use it on other machines. The software I am using will be shared below, so that whever I need to install my dots on a new system, I could easily install packages and not forget about them. Its more of a me-repo, rather then a pre-configured setup. Feel free to yoink whatever you like. 

This repo also, contains some future-use commands/assets. Like reference for setup of a fedora minimal install. 

# Packages 
>  ### Distros
  - Arch
  - Fedora

>  ### Terminal / Terminal Components 
  - Micro
  - Fastfech
  - Starship
  - Fish Shell
  - FZF
  - PLugins - [fzf.fish](https://github.com/PatrickF1/fzf.fish)
  - Kitty
  - [shell-colorscripts](https://gitlab.com/dwt1/shell-color-scripts)
  
>  ### Window Manager(s) / Components
   - Niri
   - Hyprland
   - Noctalia [bar, osd, lock screen, idle inhabitor, polkit agent, colors, wallpapers, launcher]    
>  ### Misc Apps
   - Image Viewer ( gnome )
   - Videos ( gnome )
   - Video Player ( gnome )
   - Sushi ( file preview )
  
>  ### Serives 
   - [bluez-utils](https://archlinux.org/packages/?name=bluez-utils) 

>  ### Screenshot Utils
   - Slurp
   - Satty
   - Grim

>  ### Cursor Theme
    - Bibata 
   ### Fonts
   - AnnotationM Nerd Font
   - Noto Sans Emoji
   
### Refrences / Credits 
>  ## Wallpaper  
   - [ML4W](https://github.com/mylinuxforwork/wallpaper.git)

   - [Wallpaper Heaven](https://wallhaven.cc/)
   - Respective artists, who created theese wallpapers.
>  ## Fastfetch  
   - [yagnikpt](https://github.com/yagnikpt/dotfiles/blob/main/Configs/fastfetch/.config/fastfetch/config.jsonc)
   ## Starship
   - Typecraft - Thanks to his beautiful starship config, I didn't even change a signle bit of code, 😸.



### Fedora Minimal Setup
 # Enabling RPM Fusion
  ``` 
  sudo dnf5 install \
  https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
  https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm 
  ```
 Update the system using; 
  ``` 
  sudo dnf5 group upgrade core 
  ```
  ``` 
  sudo dnf5 upgrade --refresh 
  ```

 # Set graphical boot target
  ``` 
  sudo systemctl set-default graphical.target 
  ```

 # Networking
  ```
  sudo dnf5 install NetworkManager-wifi
  ```

 # Intel GPU Drivers
  ```
  sudo dnf5 install mesa-dri-drivers mesa-vulkan-drivers mesa-libGL mesa-demos
  ```

 # Nautilus Related Packages
  ```
  sudo dnf5 install nautilus sushi nautilus-python
  ```

  # Audio/Microphone (Pipewire)
  ```
  sudo dnf5 install pipewire pipewire-pulseaudio pipewire-alsa wireplumber alsa-sof-firmware

  systemctl --user enable --now pipewire pipewire-pulse wireplumber

  ```
  If the output is shown as 'dummy output' or no sound comes, refer to this [doc](https://docs.fedoraproject.org/en-US/quick-docs/how-to-troubleshoot-sound-problems/#_introduction).

  # H.264 Codecs
  ```
  sudo dnf swap ffmpeg-free ffmpeg --allowerasing
  ```
  # Missing ICONS in Browser (:())?
   ```
   sudo dnf5 install google-noto-fonts-all google-noto-color-emoji-fonts
   ```
