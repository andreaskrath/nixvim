{pkgs, ...}: {
  imports = [
    ./keymap.nix
    ./option.nix
    ./performance.nix
    ./diagnostics.nix
    ./autocmd.nix

    # plugins
    ./plugin/nvim-autopairs.nix
    ./plugin/which-key.nix
    ./plugin/telescope.nix
    ./plugin/cmp.nix
    ./plugin/treesitter.nix
    ./plugin/web-devicons.nix
    ./plugin/lualine.nix
    ./plugin/conform.nix
    ./plugin/lsp.nix
    ./plugin/gitsigns.nix
    ./plugin/rust.nix
    ./plugin/fidget.nix
    ./plugin/statuscol.nix
    ./plugin/barbar.nix
    ./plugin/neogit.nix
    ./plugin/dap.nix
    ./plugin/dap-ui.nix
    ./plugin/dap-virtual-text.nix
    ./plugin/oil.nix
  ];

  viAlias = true;
  vimAlias = true;

  extraPackages = with pkgs; [
    xclip
    ripgrep

    alejandra
    nixd
    marksman
  ];

  extraConfigLua = ''
    -- This prevents rust-analyzer errors cause of cancelled requests.
    -- Cancelled requests happen most often because a newer request has been received.
    vim.lsp.handlers["window/showMessage"] = function(_, result, ctx)
      local client = vim.lsp.get_client_by_id(ctx.client_id)
      local level = result.type
      local message = result.message
      if client and client.name == "rust_analyzer" then
        if not message:match("server cancelled the request") then
          vim.notify(message, level)
        end
      end
    end
  '';

  extraConfigLuaPost = ''
    -- makes signcolumn bg transparent
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
        # makes nvim bg color match terminals
        dark0 = "#32302f";
      };
    };
  };
}
