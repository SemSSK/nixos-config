{pkgs,upkgs, ...}:
{
  gtk = {
    enable = true;
    cursorTheme = {
      package = pkgs.catppuccin-cursors.mochaDark;
      name = "Catppuccin-Mocha-Dark-Cursors";
    };
    iconTheme = {
      package = pkgs.papirus-icon-theme;
      name = "Papirus-Dark";
    };
    theme = {
      name = "Catppuccin-Macchiato-Compact-Pink-dark";
      package = pkgs.catppuccin-gtk.override {
        accents = [ "pink" ];
        size = "compact";
        variant = "mocha";
      };
    };
    gtk3.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
    gtk4.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
    # gtk2.extraConfig = ''
    #   gtk-application-prefer-dark-theme = 1
    #   gtk-theme = "Catppuccin-Macchiato-Compact-Pink-dark";
    #   icon-theme = "Papirus-Dark";
    #   cursor-theme = "Catppuccin-Mocha-Dark";
    #   theme = "Catppuccin-Macchiato-Compact-Pink-dark";
    # '';
    # gtk3.extraConfig = {
    #   gtk-application-prefer-dark-theme = true;
    #   gtk-theme = "Catppuccin-Macchiato-Compact-Pink-dark";
    #   icon-theme = "Papirus-Dark";
    #   cursor-theme = "Catppuccin-Mocha-Dark";
    #   theme = "Catppuccin-Macchiato-Compact-Pink-dark";
    # };
    # gtk4.extraConfig = {
    #   gtk-application-prefer-dark-theme = true;
    #   gtk-theme = "Catppuccin-Macchiato-Compact-Pink-dark";
    #   icon-theme = "Papirus-Dark";
    #   cursor-theme = "Catppuccin-Mocha-Dark";
    #   theme = "Catppuccin-Macchiato-Compact-Pink-dark";
    # };
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
    style = {
      name = "adwaita-dark";
      package = pkgs.adwaita-qt;
    };
  };
  home.sessionVariables = {
    QT_QPA_PLATFORMTHEME = "gtk3";
  };
  home.sessionVariables.GTK_THEME = "Catppuccin-Macchiato-Compact-Pink-dark";
  
}
