# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, upkgs,... }:
{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.efi.efiSysMountPoint = "/boot/efi";
	boot.supportedFilesystems = [ "ntfs" ];
	
  networking.hostName = "cockroach"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
	# networking.nameservers = [
	# 	"8.8.8.8"
	# 	"1.1.1.1"
	# ];
  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

	# Power management
	powerManagement.cpuFreqGovernor = "performance";
  
  # Enable networking
  networking.networkmanager.enable = true;
	networking.networkmanager.wifi.backend = "iwd";	
	networking.resolvconf.dnsExtensionMechanism = false;

  # Set your time zone.
  time.timeZone = "Africa/Algiers";

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
      xfce = {
        enable = true;
        noDesktop = true;
        enableXfwm = false;
      };
      plasma5.enable = false;
    };
    windowManager.i3.enable = true;
      
    displayManager.lightdm.enable = true;
    displayManager.defaultSession = "xfce";
  };

  # Configure keymap in X11
  services.xserver = {
    layout = "fr";
    xkbVariant = "azerty";
  };

  # Configure console keymap
  console.keyMap = "fr";

  # Enable CUPS to print documents.
  services.printing.enable = true;


	hardware.uinput.enable = true;
	
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
    description = "sem";
    extraGroups = [ "networkmanager" "wheel" "docker" "libvirtd" "input" "kvm"];
    shell = pkgs.fish;
    packages = with pkgs; [
      neofetch
      qbittorrent
      vlc
      libreoffice-qt
      pavucontrol
      vulkan-tools
			zip
			unzip
			gnutar
			ffmpeg_6-full
			lm_sensors
    ];
  };
  
  # Unable pulseaudio
  nixpkgs.config.pulseaudio = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  
  # Nvidia Settings
	nixpkgs.config.packageOverrides = pkgs: {
    vaapiIntel = pkgs.vaapiIntel.override { enableHybridCodec = true; };
  };
  services.xserver.videoDrivers = [ "nvidia" ];
	hardware.opengl.driSupport32Bit = true;
  hardware.opengl = {
		enable = true;
		extraPackages = with pkgs;[
			intel-media-driver
			vaapiIntel         # LIBVA_DRIVER_NAME=i965 (older but works better for Firefox/Chromium)
      vaapiVdpau
      libvdpau-va-gl
			nvidia-vaapi-driver
		];
	};
  hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.beta;  

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
		vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    xorg.xbacklight
		virt-manager
		xfce.xfce4-whiskermenu-plugin
		xfce.xfce4-pulseaudio-plugin
		xfce.xfce4-clipman-plugin
		gnome.file-roller
		gnome.gnome-keyring
		glxinfo
	  wget
		nvidia-vaapi-driver
		(lutris.override {
      extraLibraries =  pkgs: [
				wineWowPackages.staging
				winetricks
				# dxvk
      ];
    })
  ];

  #Default shell
  environment.shells = with pkgs; [
			fish
  ];

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
  system.stateVersion = "22.11"; # Did you read the comment?

  nix = {
  	package = pkgs.nixFlakes;
		extraOptions = "experimental-features = nix-command flakes";
    settings.auto-optimise-store = true;  
		gc = {
			automatic = true;
			dates = "weekly";
			options = "--delete-older-than 7d";
		};
	};
  
  services = {
		# Postgresql Setup
		postgresql = {
			enable = true;
			package = pkgs.postgresql;
			port = 5432;
		};
    # Remote desktop setup
  };
	services.flatpak.enable = true;
	xdg.portal = {
		enable = true;
		extraPortals = with pkgs; [
			xdg-desktop-portal-gtk
		];
	};
	
	programs.thunar.enable = true;
  programs.thunar.plugins = with pkgs.xfce; [
    thunar-archive-plugin
    thunar-volman
  ];
	programs.fish.enable = true;

  fonts.fonts = with pkgs; [
  	(nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" ]; })
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
      # For Nixos version > 22.11
      defaultNetwork.settings = {
        dns_enabled = true;
      };
			enableNvidia = true;
    };
		libvirtd = {
			enable = true;
		};
		oci-containers.backend = "podman";		
		oci-containers.containers = {
		};
  };
	
	programs.dconf.enable = true;
  system.autoUpgrade.enable = true;
}
