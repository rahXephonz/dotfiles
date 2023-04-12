{
  description = "My Home Manager Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    hyprland.url = "github:hyprwm/Hyprland";
    nixgl.url = "github:guibou/nixGL";
  };

  outputs = { nixpkgs, home-manager, hyprland, nixgl, ... }: {
    defaultPackage.x86_64-linux = home-manager.defaultPackage.x86_64-linux;
    homeConfigurations = {
      ms = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs {
          overlays = [ nixgl.overlay ];
          config = { allowUnfree = true; };
          system = "x86_64-linux";
        };
        modules = [ ./home hyprland.homeManagerModules.default ];
      };
    };
  };

}
