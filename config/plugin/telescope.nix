{
  plugins.telescope = {
    enable = true;

    extensions = {
      file-browser.enable = true;
      fzf-native.enable = true;
      ui-select.enable = true;
    };

    settings = {
      defaults = {
        layout_config = {
          horizontal = {
            prompt_position = "top";
          };
        };
        sorting_strategy = "ascending";
        initial_mode = "normal";
      };

      extensions.__raw = ''
        {
          ['ui-select'] = {
            require("telescope.themes").get_cursor {}
          }
        }
      '';
    };
  };
}
