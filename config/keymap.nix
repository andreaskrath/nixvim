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

    # buffers
    {
      mode = normal;
      key = "gn";
      action = ":bnext<cr>";
      options = {
        desc = "Move to next buffer";
        noremap = true;
        silent = true;
      };
    }
    {
      mode = normal;
      key = "gp";
      action = ":bprevious<cr>";
      options = {
        desc = "Move to previous buffer";
        noremap = true;
        silent = true;
      };
    }

    # nvim-tree
    {
      mode = normal;
      key = "<leader>F";
      action = ":NvimTreeOpen<cr>";
      options = {
        desc = "Open file tree";
        silent = true;
        noremap = true;
      };
    }

    # lazy-git
    {
      mode = normal;
      key = "<leader>lg";
      action = ":LazyGit<cr>";
      options = {
        desc = "Open LazyGit";
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
      key = "<leader>d";
      action = ":Telescope diagnostics bufnr=0<cr>";
      options = {
        desc = "Document diagnostics";
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
    {
      mode = normal;
      key = "<leader>D";
      action = ":Telescope diagnostics<cr>";
      options = {
        desc = "Workspace diagnostics (depends on LSP)";
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
  ];
}
