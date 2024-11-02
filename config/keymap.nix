let
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
      options.desc = "Open file tree";
    }

    # lazy-git
    {
      mode = normal;
      key = "<leader>lg";
      action = ":LazyGit<cr>";
      options.desc = "Open LazyGit";
    }

    # telescope
    {
      mode = normal;
      key = "<leader>ff";
      action = ":Telescope find_files<cr>";
      options.desc = "Find project files";
    }
    {
      mode = normal;
      key = "<leader>fg";
      action = ":Telescope live_grep<cr>";
      options.desc = "N/A";
    }
    {
      mode = normal;
      key = "<leader>d";
      action = ":Telescope diagnostics bufnr=0<cr>";
      options = {
        desc = "Document diagnostics";
      };
    }
  ];
}
