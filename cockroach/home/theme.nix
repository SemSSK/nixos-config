{pkgs,...}:
{
  gtk = {
    enable = true;

    cursorTheme = {
      package = pkgs.catppuccin-cursors.mochaDark;
      name = "Catppuccin-Mocha-Dark";
    };
    
    iconTheme = {
      package = pkgs.papirus-icon-theme;
      name = "Papirus-Dark";
    };
    
    theme = {
      name = "Catppuccin-Macchiato-Compact-Pink-dark";
      package = pkgs.catppuccin-gtk.override {
        # https://github.com/NixOS/nixpkgs/blob/nixos-23.05/pkgs/data/themes/catppuccin-gtk/default.nix
        accents = [ "pink" ];
        size = "compact";
        variant = "mocha";
      };
    };

  };

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      gtk-theme = "Catppuccin-Macchiato-Compact-Pink-dark";
      icon-theme = "Papirus-Dark";
      cursor-theme = "Catppuccin-Mocha-Dark";
      theme = "Catppuccin-Macchiato-Compact-Pink-dark";
    };
  };


  qt = {
    enable = true;
    platformTheme = "gtk";
  };

}