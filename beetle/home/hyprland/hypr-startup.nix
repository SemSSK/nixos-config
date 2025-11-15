{pkgs}:
let
  background-image = ../../../assets/Sweet-S3.png;
in
pkgs.writeShellScriptBin "hypr-startup" ''
  nm-applet --indicator &
  swaybg -o "*" -i ${background-image} -m fill &
  waybar &
  blueman-applet &
  dunst 
''
