# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "ca/desrt/dconf-editor" = {
      saved-pathbar-path = "/org/gnome/desktop/wm/keybindings/activate-window-menu";
      saved-view = "/org/gnome/desktop/wm/keybindings/";
      window-height = 500;
      window-is-maximized = false;
      window-width = 540;
    };

    "org/blueman/general" = {
      window-properties = [ 581 439 0 0 ];
    };

    "org/gnome/Console" = {
      last-window-maximised = false;
      last-window-size = mkTuple [ 874 714 ];
    };

    "org/gnome/Extensions" = {
      window-height = 1128;
    };

    "org/gnome/TextEditor" = {
      style-scheme = "stylix";
    };

    "org/gnome/baobab/ui" = {
      is-maximized = false;
      window-size = mkTuple [ 960 600 ];
    };

    "org/gnome/control-center" = {
      last-panel = "keyboard";
      window-state = mkTuple [ 968 640 false ];
    };

    "org/gnome/desktop/app-folders" = {
      folder-children = [ "System" "Utilities" "YaST" "Pardus" ];
    };

    "org/gnome/desktop/app-folders/folders/Pardus" = {
      categories = [ "X-Pardus-Apps" ];
      name = "X-Pardus-Apps.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/System" = {
      apps = [ "org.gnome.baobab.desktop" "org.gnome.DiskUtility.desktop" "org.gnome.Logs.desktop" "org.gnome.SystemMonitor.desktop" ];
      name = "X-GNOME-Shell-System.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/Utilities" = {
      apps = [ "org.gnome.Connections.desktop" "org.gnome.Evince.desktop" "org.gnome.FileRoller.desktop" "org.gnome.font-viewer.desktop" "org.gnome.Loupe.desktop" "org.gnome.seahorse.Application.desktop" ];
      name = "X-GNOME-Shell-Utilities.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/YaST" = {
      categories = [ "X-SuSE-YaST" ];
      name = "suse-yast.directory";
      translate = true;
    };

    "org/gnome/desktop/background" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///nix/store/8h4gcf7i2xsnfsf6i4ns06da4a4jy810-Sweet-S3.png";
      picture-uri-dark = "file:///nix/store/8h4gcf7i2xsnfsf6i4ns06da4a4jy810-Sweet-S3.png";
    };

    "org/gnome/desktop/break-reminders/eyesight" = {
      play-sound = true;
    };

    "org/gnome/desktop/break-reminders/movement" = {
      duration-seconds = mkUint32 300;
      interval-seconds = mkUint32 1800;
      play-sound = true;
    };

    "org/gnome/desktop/input-sources" = {
      sources = [ (mkTuple [ "xkb" "fr+azerty" ]) ];
      xkb-options = [];
    };

    "org/gnome/desktop/interface" = {
      accent-color = "blue";
      color-scheme = "prefer-dark";
      cursor-size = 20;
      cursor-theme = "Bibata-Modern-Classic";
      document-font-name = "DejaVu Serif  11";
      enable-hot-corners = true;
      font-name = "DejaVu Sans 12";
      gtk-theme = "adw-gtk3";
      monospace-font-name = "DejaVu Sans Mono 12";
      show-battery-percentage = true;
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "org-gnome-nautilus" "gnome-power-panel" "org-qbittorrent-qbittorrent" "com-heroicgameslauncher-hgl" "org-gnome-console" ];
    };

    "org/gnome/desktop/notifications/application/com-heroicgameslauncher-hgl" = {
      application-id = "com.heroicgameslauncher.hgl.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-power-panel" = {
      application-id = "gnome-power-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-console" = {
      application-id = "org.gnome.Console.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-extensions" = {
      application-id = "org.gnome.Extensions.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-nautilus" = {
      application-id = "org.gnome.Nautilus.desktop";
    };

    "org/gnome/desktop/notifications/application/org-qbittorrent-qbittorrent" = {
      application-id = "org.qbittorrent.qBittorrent.desktop";
    };

    "org/gnome/desktop/peripherals/keyboard" = {
      numlock-state = true;
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/search-providers" = {
      sort-order = [ "org.gnome.Settings.desktop" "org.gnome.Contacts.desktop" "org.gnome.Nautilus.desktop" ];
    };

    "org/gnome/desktop/session" = {
      idle-delay = mkUint32 300;
    };

    "org/gnome/desktop/wm/keybindings" = {
      close = [ "<Super>q" ];
      maximize = [ "<Super>m" ];
      minimize = [];
      move-to-monitor-down = [ "<Super><Shift>Down" ];
      move-to-monitor-left = [];
      move-to-monitor-right = [];
      move-to-monitor-up = [ "<Super><Shift>Up" ];
      move-to-workspace-down = [ "<Control><Shift><Alt>Down" ];
      move-to-workspace-left = [ "<Super><Shift>Page_Up" "<Super><Shift><Alt>Left" "<Control><Shift><Alt>Left" ];
      move-to-workspace-right = [ "<Super><Shift>Page_Down" "<Super><Shift><Alt>Right" "<Control><Shift><Alt>Right" ];
      move-to-workspace-up = [ "<Control><Shift><Alt>Up" ];
      switch-applications = [ "<Super>Tab" "<Alt>Tab" ];
      switch-applications-backward = [ "<Shift><Super>Tab" "<Shift><Alt>Tab" ];
      switch-group = [ "<Super>Above_Tab" "<Alt>Above_Tab" ];
      switch-group-backward = [ "<Shift><Super>Above_Tab" "<Shift><Alt>Above_Tab" ];
      switch-panels = [ "<Control><Alt>Tab" ];
      switch-panels-backward = [ "<Shift><Control><Alt>Tab" ];
      switch-to-workspace-1 = [ "<Super>1" ];
      switch-to-workspace-2 = [ "<Super>2" ];
      switch-to-workspace-3 = [ "<Super>3" ];
      switch-to-workspace-4 = [ "<Super>4" ];
      switch-to-workspace-last = [ "<Super>End" ];
      switch-to-workspace-left = [ "<Shift><Super>Left" ];
      switch-to-workspace-right = [ "<Shift><Super>Right" ];
      toggle-maximized = [ "<Super>f" ];
      unmaximize = [ "<Super>Down" "<Alt>F5" ];
    };


    "org/gnome/evolution-data-server" = {
      migrated = true;
    };

    "org/gnome/gnome-system-monitor" = {
      current-tab = "disks";
      maximized = false;
      resources-cpu-expanded = true;
      resources-disk-expanded = true;
      resources-mem-expanded = true;
      resources-net-expanded = true;
      show-dependencies = false;
      show-whose-processes = "user";
      window-height = 720;
      window-width = 800;
    };

    "org/gnome/gnome-system-monitor/proctree" = {
      col-26-visible = false;
      col-26-width = 0;
    };

    "org/gnome/mutter" = {
      attach-modal-dialogs = true;
      dynamic-workspaces = true;
      edge-tiling = true;
      workspaces-only-on-primary = true;
    };

    "org/gnome/mutter/keybindings" = {
      cancel-input-capture = [ "<Super><Shift>Escape" ];
      toggle-tiled-left = [ "<Super>Left" ];
      toggle-tiled-right = [ "<Super>Right" ];
    };

    "org/gnome/mutter/wayland/keybindings" = {
      restore-shortcuts = [ "<Super>Escape" ];
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "icon-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [ 890 550 ];
      initial-size-file-chooser = mkTuple [ 890 550 ];
      maximized = true;
    };

    "org/gnome/settings-daemon/plugins/color" = {
      night-light-enabled = false;
      night-light-schedule-automatic = false;
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" ];
      rotate-video-lock-static = [ "<Super>o" "XF86RotationLockToggle" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Super>Return";
      command = "alacritty";
      name = "StartTerminal";
    };

    "org/gnome/settings-daemon/plugins/power" = {
      power-saver-profile-on-low-battery = true;
      sleep-inactive-ac-timeout = 1800;
      sleep-inactive-ac-type = "nothing";
      sleep-inactive-battery-timeout = 7200;
    };

    "org/gnome/shell" = {
      disabled-extensions = [ "paperwm@paperwm.github.com" ];
      last-selected-power-profile = "power-saver";
      welcome-dialog-last-shown-version = "48.2";
    };

    "org/gnome/shell/extensions/paperwm" = {
      last-used-display-server = "Wayland";
      open-window-position = 0;
      restore-attach-modal-dialogs = "";
      restore-edge-tiling = "";
      restore-keybinds = ''
        {}
      '';
      restore-workspaces-only-on-primary = "";
      show-workspace-indicator = true;
      winprops = [];
    };

    "org/gnome/shell/extensions/paperwm/keybindings" = {
      new-window = [ "<Super>n" ];
    };

    "org/gnome/shell/extensions/paperwm/workspaces" = {
      list = [ "ac995a18-60f9-4316-87e6-d29b4adcbc2b" "38be8037-e171-4148-91a1-785fc26075ee" "19111239-765e-460a-8ecd-9956f1b4c83f" ];
    };

    "org/gnome/shell/extensions/paperwm/workspaces/19111239-765e-460a-8ecd-9956f1b4c83f" = {
      index = 2;
    };

    "org/gnome/shell/extensions/paperwm/workspaces/38be8037-e171-4148-91a1-785fc26075ee" = {
      index = 1;
    };

    "org/gnome/shell/extensions/paperwm/workspaces/ac995a18-60f9-4316-87e6-d29b4adcbc2b" = {
      index = 0;
    };

    "org/gnome/shell/extensions/user-theme" = {
      name = "Stylix";
    };

    "org/gnome/shell/keybindings" = {
      focus-active-notification = [ "<Super>n" ];
      shift-overview-down = [ "<Super><Alt>Down" ];
      shift-overview-up = [ "<Super><Alt>Up" ];
      switch-to-application-1 = [];
      switch-to-application-2 = [];
      switch-to-application-3 = [];
      switch-to-application-4 = [];
      toggle-message-tray = [];
    };

    "org/gnome/shell/world-clocks" = {
      locations = [];
    };

    "org/gtk/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 167;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      window-position = mkTuple [ 26 23 ];
      window-size = mkTuple [ 1203 902 ];
    };

  };
}
