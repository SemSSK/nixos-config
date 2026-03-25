{
  description = "flake for system configuration";

  # nixConfig = {
  #     extra-substituters = [
  #       "https://noctalia.cachix.org"
  #       "https://nix-community.cachix.org"
  #     ];
  #     extra-trusted-public-keys = [
  #       "noctalia.cachix.org-1:pCOR47nnMEo5thcxNDtzWpOxNFQsBRglJzxWPp3dkU4="
  #       "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
  #     ];
  # };
  
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    stylix = {
      url = "github:danth/stylix/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    noctalia = {
      url = "github:noctalia-dev/noctalia-shell";
      inputs.nixpkgs.follows = "unstable";
    };
  };

  outputs = inputs@{ self, nixpkgs, unstable, home-manager, stylix, noctalia, ...  }:
   let
    system = "x86_64-linux";
    upkgs = import unstable { 
      inherit system;
      config.allowUnfree = true;
    };
    lib = nixpkgs.lib // home-manager.lib;
   in
   {
    nixosConfigurations = {
      #laptop
      caterpillar = lib.nixosSystem {
        inherit system;
        specialArgs = inputs // {inherit upkgs noctalia;};
        modules = [
          ./cachix.nix
          ./caterpillar/system
          stylix.nixosModules.stylix
          ./niri/system.nix
        ];
      };
      #laptop 2
      beetle = lib.nixosSystem {
        inherit system;
        specialArgs = inputs // {inherit upkgs;};
        modules = [
          ./cachix.nix
          ./beetle/system
          stylix.nixosModules.stylix
          ./niri/system.nix
        ];
      };
      #desktop
      cockroach = lib.nixosSystem {
        inherit system;
        specialArgs = inputs // {inherit upkgs;};
        modules = [
          ./cockroach/system
        ];
      };
    };
    homeConfigurations = {
      #laptop
      "sem@caterpillar" = lib.homeManagerConfiguration {
        extraSpecialArgs = inputs // {inherit upkgs;};
	      pkgs = nixpkgs.legacyPackages.x86_64-linux;
        modules = [
          ./caterpillar/home
          ./niri/home.nix
          stylix.homeManagerModules.stylix
          inputs.noctalia.homeModules.default
        ];
      };
      
      "sem@beetle" = lib.homeManagerConfiguration {
        extraSpecialArgs = inputs // {inherit upkgs;};
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        modules = [
          ./beetle/home
          ./niri/home.nix
          stylix.homeManagerModules.stylix
          inputs.noctalia.homeModules.default
        ];
      };
      #desktop
      "sem@cockroach" = lib.homeManagerConfiguration {
        extraSpecialArgs = inputs // {inherit upkgs;};
	      pkgs = nixpkgs.legacyPackages.x86_64-linux;
        modules = [
          ./cockroach/home
        ];
      };
    };
  };
}
