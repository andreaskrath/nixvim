let
  normal = "n";
in {
  globals.mapleader = " ";

  keymaps = [
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
