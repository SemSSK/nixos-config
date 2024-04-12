{upkgs,config,...}:
{
  imports = [
    ./gtk.nix
    ./qt5.nix
  ];
  home.packages = with upkgs; [
    libadwaita
  ];
}
