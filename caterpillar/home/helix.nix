{...}:
{
  programs.helix = {
    enable = true;
		settings = {
  		theme = "catppuccin_mocha";
  		editor = {
  			cursor-shape = {
  				insert = "bar";
  				select = "underline";
  			};
  			line-number = "relative";
  		};
		};
  };
}
