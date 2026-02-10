{upkgs,lib,...}:
let
  files = map (s: {
    "${s}" = {
      target = ".config/helix/snippets/${s}";
      source = ./snippets/${s};
    };
  }) (lib.attrNames (builtins.readDir ./snippets));
  files_mappings = lib.foldl' (acc: x: acc // x) {} files; 
in
{
  home.file = {
  #   "language.toml" = {
  #     target = ".config/helix/languages.toml";
  #     source = ./languages.toml;
  #   };
  } // files_mappings;
  
  programs.helix = {
    enable = true;
    package = upkgs.helix; 
    settings = builtins.fromTOML (builtins.readFile ./config.toml);
    languages = builtins.fromTOML (builtins.readFile ./languages.toml);
  };  
  home.packages = with upkgs; [
    nixd
    simple-completion-language-server
  ];
}
