{config,pkgs,upkgs,...}:
{

  imports = [
    ./waybar.nix
    ./dunst.nix
    ./wlogout
    # ./rofi.nix
    # ./agsconfig
  ];
    
  home.packages = with pkgs; [
    brightnessctl
    grim
    swappy
    slurp
    swaybg
    sirula
	];
  
  wayland.windowManager.hyprland = {
    enable = true;
    extraConfig = ''
      $mod = SUPER

      # Startup commands
      exec-once = ${(import ./hypr-startup.nix {inherit pkgs;})}/bin/hypr-startup

      monitor=,preferred,auto,auto

      # Some default env vars.
      env = XCURSOR_SIZE,24

      # For all categories, see https://wiki.hyprland.org/Configuring/Variables/
      input {
      	kb_layout = fr
      	kb_variant =
      	kb_model =
      	kb_options =
      	kb_rules =

      	follow_mouse = 1

      	touchpad {
      	    natural_scroll = yes
      	    disable_while_typing = no
      	}

      	sensitivity = 0 # -1.0 - 1.0, 0 means no modification.
      }

      general {
      	# See https://wiki.hyprland.org/Configuring/Variables/ for more

      	gaps_in = 2
      	gaps_out = 5
      	border_size = 1
      	col.active_border = rgba(33ccffee) rgba(00ff99ee) 45deg
      	col.inactive_border = rgba(595959aa)

      	layout = dwindle
      }

      decoration {
      	# See https://wiki.hyprland.org/Configuring/Variables/ for more

      	rounding = 0
      }

      animations {
      	enabled = yes

      	# Some default animations, see https://wiki.hyprland.org/Configuring/Animations/ for more

      	bezier = myBezier, 0.05, 0.9, 0.1, 1.05

      	animation = windows, 1, 7, myBezier
      	animation = windowsOut, 1, 7, default, popin 80%
      	animation = border, 1, 10, default
      	animation = borderangle, 1, 8, default
      	animation = fade, 1, 7, default
      	animation = workspaces, 1, 6, default
      }

      dwindle {
      	# See https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more
      	pseudotile = yes # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
      	preserve_split = yes # you probably want this
      }

      master {
      	# See https://wiki.hyprland.org/Configuring/Master-Layout/ for more
        new_status = master
      }

      gestures {
      # See https://wiki.hyprland.org/Configuring/Variables/ for more
      workspace_swipe = off
      }

      # Example per-device config
      # See https://wiki.hyprland.org/Configuring/Keywords/#executing for more
      device {
      name = epic-mouse-v1 
      sensitivity = -0.5
      }

      # Example windowrule v1
      # windowrule = float, ^(kitty)$
      # Example windowrule v2
      # windowrulev2 = float,class:^(kitty)$,title:^(kitty)$
      # See https://wiki.hyprland.org/Configuring/Window-Rules/ for more


      # Window Rules
      windowrulev2 = stayfocused, title:^()$,class:^(steam)$
      windowrulev2 = minsize 1 1, title:^()$,class:^(steam)$

      # See https://wiki.hyprland.org/Configuring/Keywords/ for more
      $mainMod = SUPER

      # Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more
      bind = $mainMod, M, exec, wlogout
      bind = $mainMod, return, exec, alacritty
      bind = $mainMod, C, killactive, 
      bind = $mainMod, E, exec, thunar
      bind = $mainMod, V, togglefloating, 
      bind = $mainMod, R, exec, sirula      
      bind = $mainMod, P, pseudo, # dwindle
      bind = $mainMod, J, togglesplit, # dwindle

      # Toggling window fullscreen
      bind = $mainMod SHIFT, F, fullscreen, 0 
      bind = $mainMod, F, fullscreen, 1
      
      # Move focus with mainMod + arrow keys
      bind = $mainMod, left, movefocus, l
      bind = $mainMod, right, movefocus, r
      bind = $mainMod, up, movefocus, u
      bind = $mainMod, down, movefocus, d

      # Switch workspaces with mainMod + [0-9]
      bind = $mainMod, ampersand, workspace, 1
      bind = $mainMod, eacute, workspace, 2
      bind = $mainMod, quotedbl, workspace, 3
      bind = $mainMod, apostrophe, workspace, 4
      bind = $mainMod, parenleft, workspace, 5
      bind = $mainMod, minus, workspace, 6
      bind = $mainMod, egrave, workspace, 7
      bind = $mainMod, underscore, workspace, 8
      bind = $mainMod, ccedilla, workspace, 9
      bind = $mainMod, agrave, workspace, 10

      # Move active window to a workspace with mainMod + SHIFT + [0-9]
      bind = $mainMod SHIFT, ampersand, movetoworkspace, 1
      bind = $mainMod SHIFT, eacute, movetoworkspace, 2
      bind = $mainMod SHIFT, quotedbl, movetoworkspace, 3
      bind = $mainMod SHIFT, apostrophe, movetoworkspace, 4
      bind = $mainMod SHIFT, parenleft, movetoworkspace, 5
      bind = $mainMod SHIFT, minus, movetoworkspace, 6
      bind = $mainMod SHIFT, egrave, movetoworkspace, 7
      bind = $mainMod SHIFT, underscore, movetoworkspace, 8
      bind = $mainMod SHIFT, ccedilla, movetoworkspace, 9
      bind = $mainMod SHIFT, agrave, movetoworkspace, 10

      # Scroll through existing workspaces with mainMod + scroll
      bind = $mainMod, mouse_down, workspace, e+1
      bind = $mainMod, mouse_up, workspace, e-1

      # Move/resize windows with mainMod + LMB/RMB and dragging
      bindm = $mainMod, mouse:272, movewindow
      bindm = $mainMod SHIFT, mouse:272, resizewindow


      # window rules
      # opacity
      windowrule = opacity 0.9 0.9,^(alacritty)$

      # Brightness control
      bind= ,XF86MonBrightnessDown,exec,brightnessctl set 5%-
      bind= ,XF86MonBrightnessUp,exec,brightnessctl set +5%
      bind= ,Print,exec,grim -g "$(slurp)" - | swappy -f -

      misc {
      	disable_hyprland_logo = true
      }
    '';
    settings = {};
  };
}
