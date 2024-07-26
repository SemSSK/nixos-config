{pkgs}:
pkgs.writeShellScriptBin "hypr-startup" ''
  nm-applet --indicator &
  swaybg -o "*" -i /home/sem/.background-image/Sweet-S3.png -m fill &
  waybar &
  blueman-applet &
  dunst 
''
