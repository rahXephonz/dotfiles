{
  description = "My Home Manager Flake";

  inputs = {
   nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
   home-manager = {
       url = "github:nix-community/home-manager";
       inputs.nixpkgs.follows = "nixpkgs";
   };
  };

  outputs = {nixpkgs, home-manager, ...}: {
   defaultPackage.x86_64-linux = home-manager.defaultPackage.x86_64-linux;
   	homeConfigurations = {
   	    ms = home-manager.lib.homeManagerConfiguration {
   	       	 pkgs = import  nixpkgs {
		   config = {
		     allowUnfree = true;
		   };
		 };
   	       	 modules = [ ./home ];
   	    };
   	};
  };
}
