{...}: let
  normal = "n";
  visual = "v";
in {
  globals.mapleader = " ";

  keymaps = [
    # movement
    {
      mode = [normal visual];
      key = "gs";
      action = "^";
      options = {
        desc = "Go to first no whitespace character";
        noremap = true;
        silent = true;
      };
    }
    {
      mode = [normal visual];
      key = "gh";
      action = "0";
      options = {
        desc = "Go to start of line";
        noremap = true;
        silent = true;
      };
    }
    {
      mode = [normal visual];
      key = "gl";
      action = "$";
      options = {
        desc = "Go to end of line";
        noremap = true;
        silent = true;
      };
    }
    {
      mode = [normal visual];
      key = "0";
      action = "<Nop>";
      options = {
        desc = "Disable 0 for jumping to start of line";
        noremap = true;
        silent = true;
      };
    }
    {
      mode = [normal visual];
      key = "$";
      action = "<Nop>";
      options = {
        desc = "Disable $ for jumping to end of line";
        noremap = true;
        silent = true;
      };
    }

    # paste
    {
      mode = normal;
      key = "U";
      action = "<C-r>";
      options = {
        desc = "Redo";
        noremap = true;
        silent = true;
      };
    }
    {
      mode = normal;
      key = "<C-r>";
      action = "<Nop>";
      options = {
        desc = "Disable <C-r> for redo";
        noremap = true;
        silent = true;
      };
    }

    # oil
    {
      mode = normal;
      key = "<leader>F";
      action = ":Oil<cr>";
      options = {
        desc = "Open directory buffer";
        silent = true;
        noremap = true;
      };
    }

    # telescope
    {
      mode = normal;
      key = "<leader>ff";
      action = ":Telescope find_files<cr>";
      options = {
        desc = "Find project files";
        silent = true;
        noremap = true;
      };
    }
    {
      mode = normal;
      key = "<leader>fg";
      action = ":Telescope live_grep<cr>";
      options = {
        desc = "Workspace search";
        silent = true;
        noremap = true;
      };
    }
    {
      mode = normal;
      key = "<leader>Dd";
      action = ":Telescope diagnostics bufnr=0<cr>";
      options = {
        desc = "Document diagnostics";
        silent = true;
        noremap = true;
      };
    }
    {
      mode = normal;
      key = "<leader>Dw";
      action = ":Telescope diagnostics<cr>";
      options = {
        desc = "Workspace diagnostics (depends on LSP)";
        silent = true;
        noremap = true;
      };
    }
    {
      mode = normal;
      key = "<leader>b";
      action = ":Telescope buffers<cr>";
      options = {
        desc = "Open buffers";
        silent = true;
        noremap = true;
      };
    }

    # diagnostics
    {
      mode = normal;
      key = "<leader>e";
      action = ":lua vim.diagnostic.open_float()<cr>";
      options = {
        desc = "Open diagnostic under cursor";
        silent = true;
        noremap = true;
      };
    }

    # neogit
    {
      mode = normal;
      key = "<leader>gg";
      action = ":Neogit<cr>";
      options = {
        desc = "Open Neogit";
        silent = true;
        noremap = true;
      };
    }

    # dap
    {
      mode = normal;
      key = "<leader>db";
      action = ":DapToggleBreakpoint<cr>";
      options = {
        desc = "Toggles a breakpoint on the current line";
        silent = true;
        noremap = true;
      };
    }
    {
      mode = normal;
      key = "<leader>dc";
      action = ":DapContinue<cr>";
      options = {
        desc = "Continue to the next breakpoint";
        silent = true;
        noremap = true;
      };
    }
    {
      mode = normal;
      key = "<leader>ds";
      action = ":DapStepOver<cr>";
      options = {
        desc = "Steps over the current instruction";
        silent = true;
        noremap = true;
      };
    }
    {
      mode = normal;
      key = "<leader>di";
      action = ":DapStepInto<cr>";
      options = {
        desc = "Steps into the current instruction";
        silent = true;
        noremap = true;
      };
    }
    {
      mode = normal;
      key = "<leader>do";
      action = ":DapStepOut<cr>";
      options = {
        desc = "Steps out of the current instruction";
        silent = true;
        noremap = true;
      };
    }
    {
      mode = normal;
      key = "<leader>dq";
      action = ":DapTerminate<cr>";
      options = {
        desc = "Stops the DAP execution";
        silent = true;
        noremap = true;
      };
    }

    # Keep selection when indenting
    {
      mode = visual;
      key = ">";
      action = ">gv";
      options = {
        silent = true;
        noremap = true;
      };
    }
    {
      mode = visual;
      key = "<";
      action = "<gv";
      options = {
        silent = true;
        noremap = true;
      };
    }

    # Move cursor to end of yanked selection
    {
      mode = visual;
      key = "y";
      action = "y`]";
      options = {
        silent = true;
        noremap = true;
      };
    }
  ];
}
