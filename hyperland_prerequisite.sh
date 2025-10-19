#!/bin/bash

sudo apt install -y \
  build-essential \
  git \
  cmake \
  meson \
  ninja-build \
  pkg-config \
  libwayland-dev \
  libxkbcommon-dev \
  libinput-dev \
  libpixman-1-dev \
  libgbm-dev \
  libegl-dev \
  libgles2 \
  libvulkan-dev \
  libx11-dev \
  libxcb1-dev \
  libxcb-randr0-dev \
  libxcb-util-dev \
  libxcb-ewmh-dev \
  libxcb-icccm4-dev \
  libxcb-xinput-dev \
  libxcb-composite0-dev


# Add Hyprland repository
sudo curl -fsSLo /usr/share/keyrings/hyprland.asc https://packages.hyprland.org/hyprland.asc
echo "deb [signed-by=/usr/share/keyrings/hyprland.asc] https://packages.hyprland.org/debian ./" | sudo tee /etc/apt/sources.list.d/hyprland.list

# Install Hyprland
sudo apt update
sudo apt install hyprland

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
