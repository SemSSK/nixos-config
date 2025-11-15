{config,pkgs,...}:
{
  services.dunst = {
    enable = true;
    iconTheme = {      
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
      size = "32x32";
    };
    settings = {
      global = {
        corner_radius = 20;
      };
    };
  };
}
