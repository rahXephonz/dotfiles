# NixOS WSL Config For Development Purposes

With this config you will get :

- Javascript / Typescript Ready to use Environment Development
- Rust Ready To Use Environment Development
- Go-Lang Ready To Use Environment Development
- Andorid Ready To Use Environment Development
- PHP Ready To Use Environment Development
- Python Ready To Use Environment Development
- Java Ready To Use Environment Development
- Docker Native ( No Need Install Docker Desktop )

## Recomendation Hardware Specification

### At Least have 

- 8 GB Of Ram
- Intel Skylake / Ryzen 3000 Series
- 30 GB Free Storage

## Initial Setup

- You need to enable WSL For Windows (In Windows 11 its Already Enabled)
- I assume you already have WSL on your Windows so kindly you can follow below instructions

- Go to [Nix WSL Release Page](https://github.com/nix-community/NixOS-WSL/releases/) and download file call nixos-wsl-installer.tar.gz
- Open PowerShell and 
`
mkdir ~/AppData/Local/NixOS
`
- after that you can install NixOS 

> `
wsl --import NixOS ~/AppData/Local/NixOS ~/Downloads/nixos-wsl-installer.tar.gz --version 2
`
- login to wsl nix
> `
wsl -d NixOS
`

- after that you need to close the wsl and shutdown wsl, re-run the wsl
> `
wsl --shutdown
`
> `
wsl -d NixOS
`


### How To use Config 

- Crete the .config folder

> `
mkdir ~/.config
`
- Enable git
> `
nix-shell -p git
`

- Clone the config
> `
git clone https://github.com/maulansdqn/nixos-wsl ~/.config/
`
