# This file contains NixOS configuration common for all my machines.

# By convention, I symilnk this file to /etc/nixos/common.nix and add:
# ```
# imports = [
#   # …
#   ./common.nix
# ]
# ```
# to /etc/nixos/configuration.nix.


{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    arandr
    aria2
    autossh
    bat
    direnv
    dnsutils
    docker-compose
    emacs
    entr
    exa
    ffmpeg
    file
    fzf
    gitFull
    gron
    gtypist
    helix
    htop
    i3lock-fancy
    imagemagick
    iotop
    jq
    killall
    lsof
    man-pages man-pages-posix stdmanpages
    moreutils
    mpv
    multimarkdown
    mupdf
    pavucontrol
    pv
    pwgen
    python311
    ripgrep
    sqlitebrowser
    starship
    taskwarrior
    tmux
    tree
    units
    unzip
    usbutils
    wget
    whois
    xclip
    xdotool
  ];
}