{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "zonda";
  home.homeDirectory = "/home/zonda";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  nixpkgs.config.allowUnfree = true;

  home.packages = [
    pkgs.unzip
    pkgs.htop
    pkgs.curl
    pkgs.wget
    pkgs.whois
    pkgs.screenfetch
    pkgs.spectacle
    pkgs.flameshot
    pkgs.file
    pkgs.libreoffice
    pkgs.bind
    pkgs.tree
    pkgs.vivaldi
    pkgs.spotify
    pkgs.tdesktop
    pkgs.xclip
    pkgs.jq
    pkgs.google-chrome
    pkgs.ranger
    pkgs.zip

    # audio
    pkgs.ardour
    pkgs.qtractor
    pkgs.qjackctl
    pkgs.ffmpeg
    pkgs.vlc

    # devtools
    pkgs.postman
    pkgs.qemu
    pkgs.nmap
    pkgs.netcat
    pkgs.docker-compose
    pkgs.insomnia
    pkgs.vim
    pkgs.ctags
    pkgs.tmux-mem-cpu-load
    pkgs.tmux
    pkgs.git
    pkgs.vscode
    pkgs.docker
    pkgs.tcpdump
    pkgs.wireshark
    pkgs.bless
    pkgs.ngrok
    pkgs.minikube

    # compiler
    pkgs.llvm
    pkgs.cmake
    pkgs.gnumake
    pkgs.ninja
    pkgs.binutils
    pkgs.bison
    pkgs.m4
    pkgs.flex
    pkgs.zlib
    pkgs.zlib.dev

    # c
    pkgs.gcc
    pkgs.gdb
    # pkgs.clang

    # python
    pkgs.python
    pkgs.python3
    pkgs.python3.pkgs.pip

    # rust
    pkgs.cargo
    pkgs.rustc
    pkgs.rustfmt
    pkgs.rust-analyzer
    pkgs.clippy
  ];
}
