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
        frame_color = "#89B4FA";
        separator_color= "frame";
      };
      urgency_low = {
        background = "#1E1E2E";
        foreground = "#CDD6F4";
      };
      urgency_normal = {
        background = "#1E1E2E";
        foreground = "#CDD6F4";
      };
      urgency_critical = {
        background = "#1E1E2E";
        foreground = "#CDD6F4";
        frame_color = "#FAB387";
      };
    };
  };
}
