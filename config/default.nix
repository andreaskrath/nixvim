{pkgs, ...}: {
  imports = [
    ./keymap.nix
    ./option.nix
    ./performance.nix

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
    ./plugin/trouble.nix
    ./plugin/conform.nix
    ./plugin/lsp.nix
    ./plugin/gitsigns.nix
  ];

  viAlias = true;
  vimAlias = true;

  extraPackages = with pkgs; [
    xclip

    alejandra
    nixd
  ];

  extraConfigLuaPost = ''
    vim.api.nvim_set_hl(0, "SignColumn", {})
  '';

  clipboard.providers.xclip.enable = true;

  colorschemes.gruvbox = {
    enable = true;

    settings = {
      terminal_colors = true;
      undercurl = false;
      underline = false;
      bold = false;
      italic = {
        strings = false;
        emphasis = false;
        comments = true;
        operators = false;
        folds = true;
      };

      palette_overrides = {
        dark0 = "#32302f";
      };
    };
  };
}
