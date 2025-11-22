{ config, lib, pkgs, modulesPath, ... }:
{
  services.openssh = {
    enable = true;
    settings = {
      PasswordAuthentication = true;
      PermitRootLogin = "no";
    };
    services.sunshine = {
      enable = true;
      openFirewall = false; # VERY IMPORTANT: do NOT open ports
    };
  };
}
