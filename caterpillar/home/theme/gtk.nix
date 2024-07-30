{ config, lib, pkgs, ... }:
{
  gtk = {
    enable = true;
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
    # cursorTheme = {
    #   name = "Catppuccin-Mocha-Dark-Cursors";
    #   package = pkgs.catppuccin-cursors.mochaDark;
    # };
    # theme = {
    #   name = "Catppuccin-Mocha-Standard-Mauve-Dark";
    #   package = pkgs.catppuccin-gtk.override {
    #     accents = [ "mauve" ];
    #     size = "standard";
    #     tweaks = [ "rimless" "black" ];
    #     variant = "mocha";
    #   };
    # };
    
    
    # gtk2.extraConfig = ''
    #   gtk-application-prefer-dark-theme=1
    # '';
    # gtk3.extraConfig = {
    #   Settings = ''
    #     gtk-application-prefer-dark-theme=1
    #   '';
    # };

    # gtk4.extraConfig = {
    #   Settings = ''
    #     gtk-application-prefer-dark-theme=1
    #   '';
    # };
  };
  # xdg.configFile = {
  #   "gtk-4.0/assets".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/assets";
  #   "gtk-4.0/gtk.css".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/gtk.css";
  #   "gtk-4.0/gtk-dark.css".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/gtk-dark.css";
  # };

  # home.sessionVariables.GTK_THEME = "Catppuccin-Mocha-Standard-Mauve-Dark";
}
