{
  autoCmd = [
    # open telescope in find files on starting vim
    {
      event = ["VimEnter"];
      callback = {
        __raw = ''
          function()
            if vim.fn.argc() == 0 then
              require("telescope.builtin").find_files()
            end
          end
        '';
      };
    }

    # disable semantic highlighting
    {
      event = ["LspAttach"];
      callback = {
        __raw = ''
          function(args)
            local client = vim.lsp.get_client_by_id(args.data.client_id)
            client.server_capabilities.semanticTokensProvider = nil
          end
        '';
      };
    }

    # set tabs to 2 spaces
    {
      event = ["BufEnter" "BufWinEnter"];
      callback = {
        __raw = ''
          function()
            vim.opt_local.tabstop = 2
            vim.opt_local.softtabstop = 2
            vim.opt_local.shiftwidth = 2
          end
        '';
      };
      pattern = ["*.nix" "*.js" "*.html" "*.svelte"];
    }

    # set tabs to 4 spaces
    {
      event = ["BufEnter" "BufWinEnter"];
      callback = {
        __raw = ''
          function()
            vim.opt_local.tabstop = 4
            vim.opt_local.softtabstop = 4
            vim.opt_local.shiftwidth = 4
          end
        '';
      };
      pattern = ["*.rs" "*.go" "*.yaml" "*.yml" "*.toml" "justfile"];
    }
  ];
}
