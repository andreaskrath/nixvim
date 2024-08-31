let
  normal = "n";
in {
  globals.mapleader = " ";

  keymaps = [
    {
      mode = normal;
      key = "<leader>F";
      action = ":NvimTreeOpen<cr>";
      options.desc = "Open file tree";
    }
  ];
}
