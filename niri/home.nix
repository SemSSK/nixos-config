{config, pkgs, ...}:
{
	home.packages = with pkgs; [
		fuzzel
	];

	home.file."config.kdl" = {
    target = ".config/niri/config.kdl";
    source = ./config.kdl;
    force = true;
  };

  # programs.noctalia-shell.settings = {
  # 	general = {
  # 		keybinds = {
  # 			"keyUp" 
  # 		}
  # 	}
  # };
}
