{config,pkgs,...}:
let
in
{
	boot.kernelParams = ["quiet"];
	boot.plymouth = {
		enable = true;
	};
}
