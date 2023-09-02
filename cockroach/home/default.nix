{ config ,pkgs ,upkgs ,unstable ,... }:
{
	home.username = "sem";
	home.homeDirectory = "/home/sem";
	imports = [
		./theme.nix
		./picom.nix
		./helix.nix
	];
	programs = {


		exa = {
			enable = true;
			icons = true;
			git = true;
			extraOptions = [
				"--tree" 
				"--level=1" 
				"--icons"
			];
		};

		
		direnv = {
			enable = true;
			nix-direnv.enable = true;
		};
		
		firefox.enable = true;
		chromium.enable = true;
	
		git = {
			enable = true;
			userEmail = "ssksem015@gmail.com";
			userName = "semssk";
		};
					
		fish = {
			enable = true;
			interactiveShellInit = ''
				set fish_greeting 
			'';
		};
	
	  zellij = {
			enable = true;
		};		
	
		starship = {
			enable = true;
			enableNushellIntegration = true;
			settings = {
				add_newline = true;
				character = {
			    success_symbol = "➜";
			    error_symbol = "➜";
			  };
			};
		};
			
		vscode = {
			enable = true;
			package = upkgs.vscode;
		};
	
		kitty = {
			enable = true;
			theme = "Catppuccin-Mocha";
			settings = {
				font_size = "12.0";
			};
		};
	
		bat.enable = true;
	};

	#Installed packages
	home.packages = with pkgs; [
		htop
		dbeaver
		pandoc
		distrobox
	] ++ (with upkgs; [
		steam-run
		godot_4
		obsidian
	]);

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
	home.stateVersion = "22.11";
}

