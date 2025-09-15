#!/bin/bash

declare -A mapping=(
    [".config/alacritty"]="$HOME/.config/alacritty"
    [".config/bash"]="$HOME/.config/bash"
    [".config/fastfetch"]="$HOME/.config/fastfetch"
    [".config/fish"]="$HOME/.config/fish"
    [".config/sway"]="$HOME/.config/sway"
    [".config/swaylock"]="$HOME/.config/swaylock"
    [".config/swayidle"]="$HOME/.config/swayidle"
    [".config/kitty"]="$HOME/.config/kitty"
    [".config/nvim"]="$HOME/.config/nvim"
    [".config/waybar"]="$HOME/.config/waybar"
    [".config/wofi"]="$HOME/.config/wofi"
    [".config/yazi"]="$HOME/.config/yazi"
    [".config/zsh"]="$HOME/.config/zsh"

    [".wallpapers/"]="$HOME/.wallpapers"
    [".scripts/"]="$HOME/.scripts"
)
