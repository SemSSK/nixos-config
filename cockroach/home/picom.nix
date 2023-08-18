{...}:
{
  services.picom = {
    enable = true;
    activeOpacity = 1.0;
    inactiveOpacity = 1.0;
    vSync = true;
    backend = "glx";
    fade = true;

    opacityRules = [
      "95:class_g = 'Code' && focused"
      "80:class_g = 'Code' && !focused"
      "95:class_g = 'kitty' && focused"
      "80:class_g = 'kitty' && !focused"
    ];


    settings = {
      frame-opacity = 1.0;
      glx-no-stencil = true;
      xrender-sync-fence = false;
      blur-background = true;
      blur-method = "dual_kawase";
      blur-strength = 5;
      blur-background-exclude = [
        "window_type = 'menu'"
        "window_type = 'notification'"
        "window_type = 'dropdown_menu'"
        "window_type = 'popup_menu'"
        "window_type = 'tooltip'"
      ];
      no-dock-shadow = true;
      corner-radius = 0;
    };
  }; 
}
