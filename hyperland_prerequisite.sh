#!/bin/bash

# Install build dependencies
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
  libxcb-randr0-dev


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
