{...}:
let enable_emacs = true;
in
{
  services.emacs = {
    enable = enable_emacs;
    client = {
      enable = true;
    };
  };
  programs.emacs = {
    enable = enable_emacs;
  };
}
