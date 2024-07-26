{
  description = "flake for system configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, nixpkgs, unstable,home-manager, ...  }:
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
