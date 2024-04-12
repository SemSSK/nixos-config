{pkgs}:
pkgs.writeShellScriptBin "hypr-startup" ''
  echo "Hello world" | ${pkgs.cowsay}/bin/cowsay | ${pkgs.lolcat}/bin/lolcat
''
