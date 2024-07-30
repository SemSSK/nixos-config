{config,pkgs,...}:
let
  wallpaperPath = /home/sem/.background-image/Sweet-S3.png;
in
{
  stylix = {
    enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
    image = wallpaperPath;
    polarity = "dark";
    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic";
      size = 20;
    };
    fonts.sizes = {
      desktop = 8;
    };
  };
}
