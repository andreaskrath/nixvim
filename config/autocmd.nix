{
  autoCmd = [
    # open telescope in find files on starting vim
    {
      event = ["VimEnter"];
      command = "Telescope find_files";
    }
  ];
}
