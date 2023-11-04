{upkgs,...}:
{
  programs.vscode = {
    enable = true;
    enableUpdateCheck = false;
    package = upkgs.vscodium;
    extensions = with upkgs.vscode-extensions; [
      llvm-vs-code-extensions.vscode-clangd
      twxs.cmake
      vadimcn.vscode-lldb
      tamasfe.even-better-toml
      rust-lang.rust-analyzer
      svelte.svelte-vscode
      bradlc.vscode-tailwindcss
      tomoki1207.pdf
      catppuccin.catppuccin-vsc
      catppuccin.catppuccin-vsc-icons
    ];
    userSettings = {
      "workbench.colorTheme"= "Catppuccin Mocha";
      "workbench.iconTheme"= "catppuccin-mocha";
      "window.menuBarVisibility" = "compact";
      "editor.inlayHints.enabled" = "offUnlessPressed";
    };
  };
}
