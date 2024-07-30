{upkgs,...}:
{
  # home.file = {
  #   "config.toml" = {
  #     target = ".config/helix/config.toml";
  #     source = ./config.toml;
  #   };
  #   "language.toml" = {
  #     target = ".config/helix/languages.toml";
  #     source = ./languages.toml;
  #   };
  # };
  programs.helix = {
    enable = true;
    package = upkgs.helix; 
    settings = builtins.fromTOML (builtins.readFile ./config.toml);
    languages = builtins.fromTOML (builtins.readFile ./languages.toml);
  };  
  home.packages = with upkgs; [
    nixd
  ];
}
