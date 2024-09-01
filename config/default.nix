{...}: {
  imports = [
    ./keymap.nix
    ./option.nix

    # plugins
    ./plugin/nvim-tree.nix
    ./plugin/nvim-autopairs.nix
    ./plugin/which-key.nix
    ./plugin/telescope.nix
    ./plugin/lazygit.nix
  ];

  colorschemes.gruvbox.enable = true;
}
