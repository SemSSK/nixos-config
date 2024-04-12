{ config , pkgs, upkgs, unstable, ... }: 
let unixCommandsReplacement = with upkgs; [
	sd
	fd
	du-dust
	ripgrep
	fzf
];
in
{
	imports = [
		./theme
		./picom.nix
		./helix
		./vscode.nix
		./hyprland
	];	
	

  home.username = "sem";
  home.homeDirectory = "/home/sem";

	
	programs = {
		
		eza = {
			enable = true;
			icons = true;
			git = true;
			extraOptions = [
				"--level=1" 
				"--icons"
			];
		};

		broot.enable = true;
		direnv = {
			enable = true;
			nix-direnv.enable = true;	
		};
		
		firefox = {
			enable = true;
			package = upkgs.firefox;
		};

		
		git = {
			enable = true;
			userEmail = "ssksem015@gmail.com";
			userName = "semssk";
		};
					
		fish = {
			enable = true;
			interactiveShellInit = ''
				alias ls=eza
				set EDITOR hx
				set fish_greeting 
			'';
		};
	
	  zellij = {
			enable = true;
			enableFishIntegration = true;
			# settings = {
			# 	layout = {
			# 		pane.borderless = true;
			# 	};
			# };
		};	
			
		starship = {
			enable = true;
			enableNushellIntegration = true;
			settings = {
				add_newline = true;
			};
		};
				
		kitty = {
			enable = true;
			theme = "Catppuccin-Mocha";
			font.name = "JetBrainsMono Nerd Font 14";
			settings = {
				font_size = "12.0";
				hide_window_decorations = true;
				window_margin_width = 2;
			};

		};

		alacritty = {
			enable = true;
			package = upkgs.alacritty;
			settings = {
				window.decorations = "None";
				window.startup_mode = "Maximized";
				font.size = 12.0;
			};
		};
	
		bat.enable = true;

		thunderbird = {
			enable = true;
			profiles.sem.isDefault = true;
		};
	};


	#Installed packages
	home.packages = with pkgs; [
		htop
	]++ unixCommandsReplacement ++ (with upkgs; [
		unrar
		qbittorrent
		okular
		lutris
		wineWowPackages.waylandFull
	]);

	home.sessionVariables = {
		# GTK_THEME = "Adwaita:Dark";
  };
	
	programs.bash.enable = true;

	# Let Home Manager install and manage itself.
	programs.home-manager.enable = true;

	# This value determines the Home Manager release that your
	# configuration is compatible with. This helps avoid breakage
	# when a new Home Manager release introduces backwards
	# incompatible changes.
	#
	# You can update Home Manager without changing this value. See
	# the Home Manager release notes for a list of state version
	# changes in each release.
	home.stateVersion = "23.05";
}

