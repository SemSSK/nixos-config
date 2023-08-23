{...}:
{
  programs.helix = {
    enable = true;
		settings = {
  		theme = "catppuccin_mocha";
  		editor = {
        color-mode = true;
  			cursor-shape = {
  				insert = "bar";
  				select = "underline";
  			};
  			line-number = "relative";
  		};
		};
  };
}
