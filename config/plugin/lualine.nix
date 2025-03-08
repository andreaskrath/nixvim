{
  plugins.lualine = {
    enable = true;

    settings = {
      options = {
        theme = "gruvbox-material";
        globalstatus = true;
        always_show_tabline = true;
        section_separators = "";
        component_separators = "";
      };

      sections = {
        lualine_a = [
          {
            __unkeyed-1 = "mode";
            separator = null;
          }
        ];
        lualine_b = ["branch" "diff"];
        lualine_c = [
          {
            __unkeyed-1 = "filename";
            path = 1;
          }
        ];

        lualine_x = ["diagnostics"];
        lualine_y = ["progress"];
        lualine_z = ["location"];
      };
    };
  };
}
