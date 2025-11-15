{config,pkgs,...}:
let
  applauncher = import ./slauncher.nix {
    ags = pkgs.ags;
    stdenv = pkgs.stdenv;
  };
in
{
  home.packages = [
    applauncher
  ];

  home.file.".config/ags".source = config.lib.file.mkOutOfStoreSymlink "${applauncher}/bin";
}
