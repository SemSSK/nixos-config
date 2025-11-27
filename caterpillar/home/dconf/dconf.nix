# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "ca/desrt/dconf-editor" = {
      saved-pathbar-path = "/org/gnome/gnome-system-monitor/";
      saved-view = "/org/gnome/gnome-system-monitor/";
      window-height = 500;
      window-is-maximized = false;
      window-width = 540;
    };

    "com/github/johnfactotum/Foliate/library" = {
      view-mode = "grid";
    };

    "com/github/johnfactotum/Foliate/viewer" = {
      fold-sidebar = true;
    };

    "com/github/johnfactotum/Foliate/window" = {
      default-height = 749;
      fullscreened = false;
      maximized = true;
    };

    "com/usebottles/bottles" = {
      show-sandbox-warning = false;
      startup-view = "page_list";
      window-height = 728;
      window-width = 1354;
    };

    "io/elementary/files/preferences" = {
      active-tab-position = 0;
      default-viewmode = "icon";
      sidebar-width = 191;
      tab-info-list = [ (mkTuple [ (mkUint32 0) "file:///home/sem" "" ]) ];
      window-state = "tiled-start";
    };

    "org/blueman/general" = {
      window-properties = [ 581 439 0 0 ];
    };

    "org/blueman/plugins/autoconnect" = {
      services = [ (mkTuple [ "00:01:6C:CB:70:AC" "00000000-0000-0000-0000-000000000000" ]) ];
    };

    "org/blueman/plugins/powermanager" = {
      auto-power-on = false;
    };

    "org/blueman/plugins/recentconns" = {
      recent-connections = [ {
        adapter = "34:F3:9A:C4:17:78";
        address = "00:01:6C:CB:70:AC";
        alias = "Wireless Controller";
        icon = "input-gaming";
        name = "Audio and input profiles";
        uuid = "00000000-0000-0000-0000-000000000000";
        time = "1764206231.4124892";
        device = "/org/bluez/hci0/dev_00_01_6C_CB_70_AC";
      } {
        adapter = "34:F3:9A:C4:17:78";
        address = "80:8A:BD:E7:5E:47";
        alias = "[TV] Samsung AU7000 50 TV";
        icon = "audio-card";
        name = "Audio and input profiles";
        uuid = "00000000-0000-0000-0000-000000000000";
        time = "1722355901.220117";
      } {
        adapter = "34:F3:9A:C4:17:78";
        address = "7B:C0:31:AA:EF:87";
        alias = "RYGHT DYPLO 2";
        icon = "audio-headset";
        name = "Audio and input profiles";
        uuid = "00000000-0000-0000-0000-000000000000";
        time = "1761173228.442663";
        device = "/org/bluez/hci1/dev_7B_C0_31_AA_EF_87";
      } {
        adapter = "34:F3:9A:C4:17:78";
        address = "E0:E3:AE:73:F1:71";
        alias = "HOCO W43";
        icon = "audio-headset";
        name = "Audio and input profiles";
        uuid = "00000000-0000-0000-0000-000000000000";
        time = "1764011578.6730657";
        device = "/org/bluez/hci1/dev_E0_E3_AE_73_F1_71";
      } {
        adapter = "34:F3:9A:C4:17:78";
        address = "64:03:7F:3B:A7:CB";
        alias = "S20 FE de Sem";
        icon = "phone";
        name = "Audio and input profiles";
        uuid = "00000000-0000-0000-0000-000000000000";
        time = "1738370898.9860437";
      } ];
    };

    "org/cinnamon" = {
      enabled-applets = [ "panel1:left:0:menu@cinnamon.org:0" "panel1:left:1:separator@cinnamon.org:1" "panel1:left:2:grouped-window-list@cinnamon.org:2" "panel1:right:0:systray@cinnamon.org:3" "panel1:right:1:xapp-status@cinnamon.org:4" "panel1:right:2:notifications@cinnamon.org:5" "panel1:right:3:printers@cinnamon.org:6" "panel1:right:4:removable-drives@cinnamon.org:7" "panel1:right:5:keyboard@cinnamon.org:8" "panel1:right:6:favorites@cinnamon.org:9" "panel1:right:7:network@cinnamon.org:10" "panel1:right:8:sound@cinnamon.org:11" "panel1:right:9:power@cinnamon.org:12" "panel1:right:10:calendar@cinnamon.org:13" "panel1:right:11:cornerbar@cinnamon.org:14" ];
      next-applet-id = 15;
    };

    "org/cinnamon/desktop/sound" = {
      event-sounds = false;
    };

    "org/gnome/Console" = {
      last-window-maximised = false;
      last-window-size = mkTuple [ 874 714 ];
    };

    "org/gnome/Extensions" = {
      window-height = 1128;
    };

    "org/gnome/Geary" = {
      migrated-config = true;
      window-height = 736;
    };

    "org/gnome/Ptyxis" = {
      default-profile-uuid = "9a9bbffb43f602bf4f5d0f8666acc995";
      interface-style = "system";
      profile-uuids = [ "9a9bbffb43f602bf4f5d0f8666acc995" ];
      window-size = mkTuple [ (mkUint32 65) (mkUint32 35) ];
    };

    "org/gnome/TextEditor" = {
      style-scheme = "stylix";
    };

    "org/gnome/baobab/ui" = {
      is-maximized = false;
      window-size = mkTuple [ 960 600 ];
    };

    "org/gnome/calendar" = {
      active-view = "month";
      window-maximized = true;
      window-size = mkTuple [ 768 600 ];
    };

    "org/gnome/clocks/state/window" = {
      maximized = false;
      panel-id = "world";
      size = mkTuple [ 870 690 ];
    };

    "org/gnome/control-center" = {
      last-panel = "keyboard";
      window-state = mkTuple [ 968 640 false ];
    };

    "org/gnome/desktop/a11y/applications" = {
      screen-reader-enabled = false;
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
      categories = [ "X-GNOME-Utilities" ];
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
      cursor-blink = true;
      cursor-blink-time = 1200;
      cursor-size = 20;
      cursor-theme = "Bibata-Modern-Classic";
      document-font-name = "DejaVu Serif  11";
      enable-hot-corners = true;
      font-name = "DejaVu Sans 12";
      gtk-key-theme = "";
      gtk-theme = "adw-gtk3";
      icon-theme = "Papirus-Dark";
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

    "org/gnome/desktop/notifications/application/org-gnome-characters" = {
      application-id = "org.gnome.Characters.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-console" = {
      application-id = "org.gnome.Console.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-extensions" = {
      application-id = "org.gnome.Extensions.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-geary" = {
      application-id = "org.gnome.Geary.desktop";
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

    "org/gnome/desktop/peripherals/mouse" = {
      double-click = 400;
      drag-threshold = 8;
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      tap-to-click = true;
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/search-providers" = {
      sort-order = [ "org.gnome.Settings.desktop" "org.gnome.Contacts.desktop" "org.gnome.Nautilus.desktop" ];
    };

    "org/gnome/desktop/session" = {
      idle-delay = mkUint32 300;
    };

    "org/gnome/desktop/sound" = {
      event-sounds = false;
      input-feedback-sounds = false;
      theme-name = "default";
    };

    "org/gnome/desktop/wm/keybindings" = {
      close = [ "<Super>q" ];
      maximize = [ "<Super>m" ];
      minimize = [];
      move-to-monitor-down = [ "<Super><Shift>Down" ];
      move-to-monitor-left = [];
      move-to-monitor-right = [];
      move-to-monitor-up = [ "<Super><Shift>Up" ];
      move-to-workspace-1 = [ "<Shift><Super>1" ];
      move-to-workspace-2 = [ "<Shift><Super>2" ];
      move-to-workspace-3 = [ "<Shift><Super>3" ];
      move-to-workspace-4 = [ "<Shift><Super>4" ];
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

    "org/gnome/desktop/wm/preferences" = {
      action-middle-click-titlebar = "lower";
      button-layout = "icon,menu:minimize,maximize,close";
    };

    "org/gnome/eog/view" = {
      background-color = "#1e1e2e";
    };

    "org/gnome/epiphany" = {
      ask-for-default = false;
    };

    "org/gnome/epiphany/state" = {
      is-maximized = false;
      window-size = mkTuple [ 1024 733 ];
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
    };

    "org/gnome/gnome-system-monitor" = {
      current-tab = "disks";
      maximized = true;
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

    "org/gnome/maps" = {
      last-viewed-location = [ 0.0 0.0 ];
      map-type = "MapsStreetSource";
      transportation-type = "pedestrian";
      window-maximized = true;
      zoom-level = 2;
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
      maximized = false;
    };

    "org/gnome/nm-applet/eap/099dadd9-5541-4f38-9ba6-51f585efe4bd" = {
      ignore-ca-cert = true;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/1a0f5ac8-b92d-468e-860e-46dc8cde825c" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/1e0479bb-daea-4f93-9538-7d3493d0f931" = {
      ignore-ca-cert = true;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/55f5142e-d4cb-431e-bc3d-57afd950c089" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/6b7893ef-c151-450d-a4ae-82a4c59581ff" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/94960a0a-b35e-4e52-9de1-f51fe8fa1021" = {
      ignore-ca-cert = true;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/97c858c2-5820-48ad-9001-921a58d01034" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/b31a2c55-28eb-447b-b012-2c1bd757ae52" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/b85e7b7f-15c5-4d4a-9d08-5703e3b3c9e9" = {
      ignore-ca-cert = true;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/b8985c12-7cf6-4624-874b-0a8a4fb6ca24" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/db21a018-d72f-49c1-bbd1-62af445d0c21" = {
      ignore-ca-cert = true;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/df262677-52cc-4dcd-ab44-87c9d6e8cfb4" = {
      ignore-ca-cert = true;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/f9160e5d-21ca-4614-a944-ebf4928c3b5f" = {
      ignore-ca-cert = true;
      ignore-phase2-ca-cert = false;
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
      enabled-extensions = [ "user-theme@gnome-shell-extensions.gcampax.github.com" ];
      last-selected-power-profile = "power-saver";
      welcome-dialog-last-shown-version = "48.2";
    };

    "org/gnome/shell/extensions/paperwm" = {
      last-used-display-server = "Wayland";
      open-window-position = 0;
      restore-attach-modal-dialogs = "";
      restore-edge-tiling = "";
      restore-keybinds = ''
        {}\n
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

    "org/gtk/gtk4/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 140;
      sort-column = "name";
      sort-directories-first = true;
      sort-order = "ascending";
      type-format = "category";
      view-type = "list";
      window-size = mkTuple [ 879 376 ];
    };

    "org/gtk/settings/color-chooser" = {
      custom-colors = [ (mkTuple [ 0.7568627450980392 0.49019607843137253 6.666666666666667e-2 1.0 ]) (mkTuple [ 1.0 0.24313725490196078 0.0 1.0 ]) (mkTuple [ 4.3137254901960784e-2 0.4235294117647059 0.8549019607843137 1.0 ]) (mkTuple [ 0.5 0.5 0.5 1.0 ]) (mkTuple [ 0.11372549019607843 0.12549019607843137 0.12941176470588237 0.95 ]) ];
      selected-color = mkTuple [ true 0.0 0.0 0.0 1.0 ];
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

    "org/nemo/search" = {
      search-reverse-sort = false;
      search-sort-column = "name";
    };

    "org/nemo/window-state" = {
      geometry = "800x550+199+42";
      maximized = true;
      side-pane-view = "places";
      sidebar-bookmark-breakpoint = 0;
      start-with-sidebar = true;
    };

    "org/virt-manager/virt-manager" = {
      manager-window-height = 730;
      manager-window-width = 1354;
    };

    "org/virt-manager/virt-manager/confirm" = {
      delete-storage = true;
      unapplied-dev = true;
    };

    "org/virt-manager/virt-manager/connections" = {
      autoconnect = [ "qemu:///system" ];
      uris = [ "qemu:///system" ];
    };

    "org/virt-manager/virt-manager/conns/qemu:system" = {
      window-size = mkTuple [ 800 730 ];
    };

    "org/virt-manager/virt-manager/details" = {
      show-toolbar = true;
    };

    "org/virt-manager/virt-manager/paths" = {
      image-default = "/run/media/sem/Disque dur/Windows10VM";
      media-default = "/home/sem/Downloads";
    };

    "org/virt-manager/virt-manager/urls" = {
      isos = [ "/home/sem/Downloads/archlinux-2024.06.01-x86_64.iso" "/home/sem/Downloads/Win10_22H2_EnglishInternational_x64v1.iso" ];
    };

    "org/virt-manager/virt-manager/vmlist-fields" = {
      disk-usage = false;
      network-traffic = false;
    };

    "org/virt-manager/virt-manager/vms/863e1133c097425289ea49132848aaf3" = {
      autoconnect = 1;
      scaling = 1;
      vm-window-size = mkTuple [ 1366 725 ];
    };

    "org/virt-manager/virt-manager/vms/f9980fed7f904d469103de34b7c26fa7" = {
      autoconnect = 1;
      scaling = 1;
      vm-window-size = mkTuple [ 1354 730 ];
    };

    "org/x/warpinator/preferences" = {
      ask-for-send-permission = true;
      autostart = false;
      connect-id = "NIXOS-72D4712B90ABFA5B6E83";
      no-overwrite = true;
    };

  };
}
