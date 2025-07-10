{pkgs, ...}: {
  imports = [
    ./autocmd.nix
    ./dependencies.nix
    ./diagnostic.nix
    ./keymap.nix
    ./option.nix
    ./performance.nix

    # plugins
    ./plugin/barbar.nix
    ./plugin/cmp.nix
    ./plugin/conform.nix
    ./plugin/dap-ui.nix
    ./plugin/dap-virtual-text.nix
    ./plugin/dap.nix
    ./plugin/fidget.nix
    ./plugin/gitsigns.nix
    ./plugin/hop.nix
    ./plugin/lsp.nix
    ./plugin/lualine.nix
    ./plugin/neogit.nix
    ./plugin/nvim-autopairs.nix
    ./plugin/oil.nix
    ./plugin/python.nix
    ./plugin/rust.nix
    ./plugin/statuscol.nix
    ./plugin/telescope.nix
    ./plugin/treesitter.nix
    ./plugin/web-devicons.nix
    ./plugin/which-key.nix
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
