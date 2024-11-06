{pkgs, ...}: {
  imports = [
    ./keymap.nix
    ./option.nix
    ./performance.nix
    ./diagnostics.nix
    ./autocmd.nix

    # plugins
    ./plugin/nvim-tree.nix
    ./plugin/nvim-autopairs.nix
    ./plugin/which-key.nix
    ./plugin/telescope.nix
    ./plugin/lazygit.nix
    ./plugin/cmp.nix
    ./plugin/treesitter.nix
    ./plugin/web-devicons.nix
    ./plugin/lualine.nix
    ./plugin/conform.nix
    ./plugin/lsp.nix
    ./plugin/gitsigns.nix
    ./plugin/rust.nix
    ./plugin/fidget.nix
  ];

  viAlias = true;
  vimAlias = true;

  extraPackages = with pkgs; [
    xclip
    ripgrep

    alejandra
    nixd
  ];

  extraConfigLuaPost = ''
    vim.api.nvim_set_hl(0, "SignColumn", {})
  '';

  clipboard = {
    register = "unnamedplus";
    providers.xclip.enable = true;
  };

  colorschemes.gruvbox = {
    enable = true;

    settings = {
      terminal_colors = true;
      palette_overrides = {
        dark0 = "#32302f";
      };
    };
  };
}
