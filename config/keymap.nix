let
  normal = "n";
in {
  globals.mapleader = " ";

  keymaps = [
    {
      mode = normal;
      key = "gs";
      action = "^";
      options = {
        desc = "Go to first no whitespace character";
        noremap = true;
        silent = true;
      };
    }

    {
      mode = normal;
      key = "gh";
      action = "0";
      options = {
        desc = "Go to start of line";
        noremap = true;
        silent = true;
      };
    }

    {
      mode = normal;
      key = "gl";
      action = "$";
      options = {
        desc = "Go to end of line";
        noremap = true;
        silent = true;
      };
    }

    {
      mode = normal;
      key = "0";
      action = "<Nop>";
      options = {
        desc = "Disable 0 for jumping to start of line";
        noremap = true;
        silent = true;
      };
    }

    {
      mode = normal;
      key = "$";
      action = "<Nop>";
      options = {
        desc = "Disable $ for jumping to end of line";
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
  ];
}
