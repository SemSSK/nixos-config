{
  description = "flake for system configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    stylix = {
      url = "github:danth/stylix/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, nixpkgs, unstable,home-manager, stylix, ...  }:
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
        specialArgs = inputs // {inherit upkgs;};
        modules = [
          ./caterpillar/system
          stylix.nixosModules.stylix
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
          stylix.homeManagerModules.stylix
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
