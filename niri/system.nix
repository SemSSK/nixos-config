{config, pkgs, noctalia, ...}:
{
  programs.niri = {
    enable = true;
  };

  environment.systemPackages = with pkgs; [
    noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
    xwayland-satellite
  ];

}
