#!/bin/bash

# Install build dependencies
sudo apt install -y \
  libwlroots-dev \
  libwayland-dev \
  wayland-protocols \
  libxkbcommon-dev \
  libinput-dev \
  libpixman-1-dev \
  libgbm-dev \
  libegl-dev \
  libgles2-mesa-dev \
  libvulkan-dev \
  libdrm-dev \
  libliftoff-dev \
  libhwf-dev \
  libxcb1-dev \
  libxcb-composite0-dev \
  libxcb-xinput-dev \
  libxcb-randr0-dev \
  libxcb-icccm4-dev \
  libxcb-xfixes0-dev

# Install aquamarine dependencies
sudo apt install -y \
  libliftoff-dev \
  libhwf-dev \
  libdrm-dev

# Clone and build aquamarine
git clone https://github.com/hyprwm/aquamarine
cd aquamarine
meson build
ninja -C build
sudo ninja -C build install
cd ..

# Now try building Hyprland again
cd Hyprland
meson build
ninja -C build
sudo ninja -C build install

# Clone and build Hyprland
git clone https://github.com/hyprwm/Hyprland
cd Hyprland
meson build
ninja -C build
sudo ninja -C build install

sudo apt install -y \
  waybar \
  rofi \
  kitty \
  thunar \
  firefox-esr \
  network-manager \
  pulseaudio \
  pavucontrol \
  brightnessctl \
  playerctl

sudo apt install -y gdm3
sudo apt install -y xserver-xorg-video-amdgpu
