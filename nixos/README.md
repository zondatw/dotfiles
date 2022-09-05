# nixos

## home.nix

### Setup

install home-manager  

```shell
nix-channel --add https://github.com/nix-community/home-manager/archive/release-22.05.tar.gz home-manager
nix-channel --update

nix-shell '<home-manager>' -A install
```

soft link about config file  

```shell
ln -s ~/Projects/dotfiles/nixos/home.nix home.nix
```

### Reference

[Home Manager Manual](https://nix-community.github.io/home-manager/index.html#sec-install-standalone)  
