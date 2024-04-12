{upkgs,config,...}:
{
  programs.emacs = {
    enable = true;
    extraPackages = (epkgs: [
      evil
      catppuccin-theme
    ]);
  };
  services.emacs = {
    enable = true;

  };
}
