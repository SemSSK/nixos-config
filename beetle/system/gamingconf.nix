{
  config, pkgs, lib, modulesPath, ...
}:
{
  hardware.graphics = {
    enable = true;
    # driSupport = true;
    # driSupport32bit = true;
  };

  services.xserver.videoDrivers = ["nvidia"];

  hardware.nvidia = {
    powerManagement.enable = true;
    modesetting.enable = true;
    open = false;
    nvidiaSettings = true;
    prime = {
      sync.enable = true;
      amdgpuBusId = "PCI:35:00:0";
      nvidiaBusId = "PCI:01:00:0";
    };
  };
  # hardware.nvidia.prime = {
  #   offload = {
  #     enable = true;
  #     enableOffloadCmd = true; # Lets you use `nvidia-offload %command%` in steam
  #   };
    
  #   amdgpuBusId = "PCI:35:0:0";
  #   nvidiaBusId = "PCI:1:0:0";
  # };
  # hardware.nvidia.open = false;
  
  programs.steam.enable = true;
  programs.steam.gamescopeSession.enable = true;
  programs.gamemode.enable = true;

  environment.systemPackages = with pkgs; [glxinfo mangohud protonup-qt lutris bottles heroic discord droidcam];
}
