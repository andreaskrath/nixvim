{
  plugins.lsp = {
    enable = true;

    keymaps = {
      silent = true;

      lspBuf = {
        "<leader>a" = {
          action = "code_action";
          desc = "Code action";
        };
        gd = {
          action = "definition";
          desc = "Goto definition";
        };
        gD = {
          action = "declaration";
          desc = "Goto declaration";
        };
        gt = {
          action = "type_definition";
          desc = "Goto type definition";
        };
        "<leader>r" = {
          action = "rename";
          desc = "Rename";
        };
      };

      extra = [
        {
          mode = "n";
          key = "gr";
          action = ":Telescope lsp_references<cr>";
          options = {
            desc = "Goto references";
            silent = true;
            noremap = true;
          };
        }
        {
          mode = "n";
          key = "gi";
          action = ":Telescope lsp_implementations<cr>";
          options = {
            desc = "Goto implementations";
            silent = true;
            noremap = true;
          };
        }
        {
          mode = "n";
          key = "<leader>s";
          action = ":Telescope lsp_document_symbols<cr>";
          options = {
            desc = "Document symbols";
            silent = true;
            noremap = true;
          };
        }
        {
          mode = "n";
          key = "<leader>S";
          action = ":Telescope lsp_workspace_symbols<cr>";
          options = {
            desc = "Workspace symbols";
            silent = true;
            noremap = true;
          };
        }
      ];
    };

    servers = {
      nixd = {
        enable = true;
        package = null;
      };

      gopls = {
        enable = true;
        package = null;
      };

      taplo = {
        enable = true;
        package = null;
      };

      marksman = {
        enable = true;
        package = null;
      };

      hls = {
        enable = true;
        package = null;
        installGhc = false;
      };

      ts_ls = {
        enable = true;
        package = null;
      };

      clangd = {
        enable = true;
        package = null;
      };

      ruff = {
        enable = true;
        package = null;
      };

      pyright = {
        enable = true;
        package = null;
      };
    };
  };
}
