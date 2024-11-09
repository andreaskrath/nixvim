let
  normal = "n";
  visual = "v";
in {
  plugins.barbar = {
    enable = true;

    luaConfig.post = ''
      -- disables the red color from modified files
      vim.api.nvim_set_hl(0, "BufferCurrentMod", {})
      vim.api.nvim_set_hl(0, "BufferVisibleMod", {})
      vim.api.nvim_set_hl(0, "BufferInactiveMod", {})

      -- makes current buffer bg same as editor
      vim.api.nvim_set_hl(0, "BufferCurrent", { bg = "#32302f"})
    '';

    settings = {
      animation = false;
      clickable = false;
      highlight_visible = true;
      icons = {
        buffer_index = true;
        button = false;
      };
    };

    keymaps = {
      close = {
        key = "<leader>c";
        mode = [normal visual];
        options = {
          desc = "Close current buffer";
          noremap = true;
          silent = true;
        };
      };

      next = {
        key = "gn";
        mode = [normal visual];
        options = {
          desc = "Move to next buffer";
          noremap = true;
          silent = true;
        };
      };

      previous = {
        key = "gp";
        mode = [normal visual];
        options = {
          desc = "Move to previous buffer";
          noremap = true;
          silent = true;
        };
      };

      goTo1 = {
        key = "<A-1>";
        mode = [normal visual];
        options = {
          desc = "Goto buffer 1";
          noremap = true;
          silent = true;
        };
      };

      goTo2 = {
        key = "<A-2>";
        mode = [normal visual];
        options = {
          desc = "Goto buffer 2";
          noremap = true;
          silent = true;
        };
      };

      goTo3 = {
        key = "<A-3>";
        mode = [normal visual];
        options = {
          desc = "Goto buffer 3";
          noremap = true;
          silent = true;
        };
      };

      goTo4 = {
        key = "<A-4>";
        mode = [normal visual];
        options = {
          desc = "Goto buffer 4";
          noremap = true;
          silent = true;
        };
      };

      goTo5 = {
        key = "<A-5>";
        mode = [normal visual];
        options = {
          desc = "Goto buffer 5";
          noremap = true;
          silent = true;
        };
      };

      goTo6 = {
        key = "<A-6>";
        mode = [normal visual];
        options = {
          desc = "Goto buffer 6";
          noremap = true;
          silent = true;
        };
      };

      goTo7 = {
        key = "<A-7>";
        mode = [normal visual];
        options = {
          desc = "Goto buffer 7";
          noremap = true;
          silent = true;
        };
      };

      goTo8 = {
        key = "<A-8>";
        mode = [normal visual];
        options = {
          desc = "Goto buffer 8";
          noremap = true;
          silent = true;
        };
      };

      goTo9 = {
        key = "<A-9>";
        mode = [normal visual];
        options = {
          desc = "Goto buffer 9";
          noremap = true;
          silent = true;
        };
      };
    };
  };
}
