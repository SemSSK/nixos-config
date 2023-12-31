{...}:
{
  programs.helix = {
    enable = true;
		settings = {
  		theme = "catppuccin_mocha";
  		editor = {
        cursorline = true;
        rulers = [120];
  			line-number = "relative";
  			cursor-shape = {
  				insert = "bar";
  				select = "underline";
  			};
        indent-guides = {
          character = "|";
          render = true;
        };
        statusline = {
          left = ["mode" "spinner" "version-control" "file-name"];
        };
        lsp = {
          display-messages = true;
        };
  		};
      keys.normal = {
        "A-j" = ["extend_to_line_bounds" "delete_selection" "paste_after"];
        "A-k" = ["extend_to_line_bounds" "delete_selection" "move_line_up" "paste_before"];
      };
		};
    languages = {
      language = [
        {
          name = "java";
          language-server = { 
            command = "jdt-language-server";
          };
        }
        {
          name = "rust";
          language-server = {
            command = "ra-multiplex";
            args = ["client"];
          };
        }
      ];
    };
  };
}
