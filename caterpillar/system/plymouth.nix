{config,pkgs,...}:
let
	theme-pkg = pkgs.breeze-plymouth.override {
      nixosBranding = true;
      nixosVersion = config.system.nixosRelease;
  };
in
{
	boot.kernelParams = ["quiet"];
	boot.plymouth = {
		enable = true;
		themePackages = [
			theme-pkg
		];
		theme = "breeze";
	};
}
