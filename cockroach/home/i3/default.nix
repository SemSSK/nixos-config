{pkgs,...}:
{
  xsession.windowManager.i3 = {
    enable = true;
    pacakge = pkgs.i3-rounded;
  };
}