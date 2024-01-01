#!/bin/bash

configs=("i3" "flameshot" "dunst" "picom" "alacritty" "gtk-3.0" "nemo" "pavucontrol.ini" "polybar" "rofi")

rm -rf .config
mkdir .config

for i in ${configs[@]}
do
	echo Copying: $i
	cp -r ~/.config/$i .config/
done

rm -rf .local

mkdir -p .local/share

cp -r ~/.local/bin .local/bin
cp -r ~/.local/share/icons .local/share/icons
cp -r ~/.local/share/wallpapers .local/share/wallpapers
cp -r ~/.local/share/sddm .local/share/sddm
