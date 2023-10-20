# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, upkgs, hyprland,... }:
{
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };  
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./postgresql.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
	boot.supportedFilesystems = [ "ntfs" ];
	boot.kernel.sysctl = { "vm.swappiness" = 10;};
  networking.hostName = "caterpillar"; # Define your hostname.

	networking.nameservers = [
		"1.1.1.1"
		"8.8.8.8"
	];
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;
	networking.networkmanager.wifi.backend = "iwd";
	# networking.resolvconf.dnsExtensionMechanism = false;

	
  # Set your time zone.
  time.timeZone = "Europe/Paris";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "fr_FR.UTF-8";
    LC_IDENTIFICATION = "fr_FR.UTF-8";
    LC_MEASUREMENT = "fr_FR.UTF-8";
    LC_MONETARY = "fr_FR.UTF-8";
    LC_NAME = "fr_FR.UTF-8";
    LC_NUMERIC = "fr_FR.UTF-8";
    LC_PAPER = "fr_FR.UTF-8";
    LC_TELEPHONE = "fr_FR.UTF-8";
    LC_TIME = "fr_FR.UTF-8";
  };

  
  # Enable the X11 windowing system.
  services.xserver = {
    enable = true;
    
    desktopManager = {
      xterm.enable = false;
      # Enable Xfce Desktop Environment
      xfce.enable = true;
      # gnome.enable = true;
    };
    displayManager.defaultSession = "xfce";
    displayManager.lightdm = {
      enable = true;
      background = ./Sweet-space.png;
      greeters.slick = {
        enable = true;
        theme = {
          name = "Catppuccin-Macchiato-Compact-Pink-dark";
          package = pkgs.catppuccin-gtk.override {
            accents = [ "pink" ];
            size = "compact";
            variant = "mocha";
          };
        };
        iconTheme = {
          package = pkgs.papirus-icon-theme;
          name = "Papirus-Dark";
        };
        cursorTheme = {
          package = pkgs.catppuccin-cursors.mochaDark;
          name = "Catppuccin-Mocha-Dark";
        };
      };
    };
  };

  # programs.hyprland = {
  #   enable = true;
  # };

  # Configure keymap in X11
  services.xserver = {
    layout = "fr";
    xkbVariant = "azerty";
  };

  # Configure console keymap
  console.keyMap = "fr";

  #Battery saving
  # services.system76-scheduler.settings.cfsProfiles.enable = true;
  services.tlp = {
    enable = true;
    settings = {
      CPU_BOOST_ON_AC = 1;
      CPU_BOOST_ON_BAT = 0;
      CPU_SCALING_GOVENOR_ON_AC = "performance";
      CPU_SCALING_GOVENOR_ON_BAT = "powersave";
    };
  };
	services.thermald.enable = true;
  
  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.sem = {
    isNormalUser = true;
    description = "Sem";
    extraGroups = [ "networkmanager" "wheel" "docker" "libvirtd" ];
    shell = pkgs.fish;
    packages = with pkgs; [
      neofetch
      vlc
      libreoffice-qt
      pavucontrol
			distrobox
    ];
  };
  
  # Unable pulseaudio
  nixpkgs.config.pulseaudio = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Enable opengl
  hardware.opengl = {
		enable = true;
	};


  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
		vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    xorg.xbacklight
		virt-manager
		xfce.xfce4-whiskermenu-plugin
		xfce.xfce4-pulseaudio-plugin
		xfce.xfce4-clipman-plugin
		glxinfo
		xarchiver
  ];

  #Default shell
  environment.shells = with pkgs; [
			fish
  ];

  #Env variables
  environment.variables = {
    EDITOR = "hx";
  };

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.05"; # Did you read the comment?

  nix = {
  	package = pkgs.nixFlakes;
		extraOptions = "experimental-features = nix-command flakes";
  };
  nix.gc = {
		automatic = true;
		options = "--delete-older-than 7d";
  };
	nix.settings.auto-optimise-store = true;
  nix.settings = {
    substituters = ["https://hyprland.cachix.org"];
    trusted-public-keys = ["hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="];
  };

	programs.thunar.enable = true;
  programs.thunar.plugins = with pkgs.xfce; [
    thunar-archive-plugin
    thunar-volman
  ];
  services.gvfs.enable = true; # Mount, trash, and other functionalities
  services.tumbler.enable = true; # Thumbnail support for images

  
	programs.fish.enable = true;

  fonts.fonts = with pkgs; [
  	(nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" "JetBrainsMono"]; })
  ];
  
  virtualisation = {
    docker = {
      enable = true;
      rootless = {
        enable = true;
				setSocketVariable = true;
      };
    };
		podman = {
      enable = true;
      # Create a `docker` alias for podman, to use it as a drop-in replacement
			defaultNetwork.settings = {
			  dns_enabled = true;
			};
      # Required for containers under podman-compose to be able to talk to each other.
      # defaultNetwork.dnsname.enable = true;
      # For Nixos version > 22.11
      
    };
		libvirtd = {
			enable = true;
		};
  };
	
	programs.dconf.enable = true;
	
  system.autoUpgrade.enable = true;

}