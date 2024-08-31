{...}: {
  imports = [
    ./keymap.nix
    ./option.nix

    # plugins
    ./plugin/nvim-tree.nix
  ];

  colorschemes.gruvbox.enable = true;
}
