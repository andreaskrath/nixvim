let
  colors = {
    bg = "#282828";
    bg_dark = "#1d2021";
    bg_light = "#32302f";
    fg = "#ebdbb2";
    accent = "#83a598";
    gray = "#928374";
  };
in {
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
        borderchars = {
          prompt = [" " " " " " " " " " " " " " " "];
          results = [" " " " " " " " " " " " " " " "];
          preview = [" " " " " " " " " " " " " " " "];
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

    luaConfig.post = ''
      -- Prompt
      vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { fg = "${colors.accent}", bg = "${colors.bg_dark}" })
      vim.api.nvim_set_hl(0, "TelescopePromptNormal", { bg = "${colors.bg_dark}" })
      vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = "${colors.bg_dark}", bg = "${colors.bg_dark}" })
      vim.api.nvim_set_hl(0, "TelescopePromptTitle", { fg = "${colors.fg}", bg = "${colors.bg_dark}" })

      -- Results
      vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "${colors.bg}" })
      vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = "${colors.bg}", bg = "${colors.bg}" })
      vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { fg = "${colors.fg}", bg = "${colors.bg}" })
      vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = "${colors.bg}" })
      vim.api.nvim_set_hl(0, "TelescopeSelection", { bg = "${colors.bg_light}" })
      vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { fg = "${colors.accent}", bg = "${colors.bg_light}" })

      -- Preview
      vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = "${colors.bg}" })
      vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = "${colors.bg}", bg = "${colors.bg}" })
      vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { fg = "${colors.fg}", bg = "${colors.bg}" })

      -- Other
      vim.api.nvim_set_hl(0, "TelescopeMatching", { fg = "${colors.accent}", bold = true })
      vim.api.nvim_set_hl(0, "TelescopeMultiSelection", { bg = "${colors.bg_light}" })
      vim.api.nvim_set_hl(0, "TelescopeCountBorder", { fg = "${colors.bg}", bg = "${colors.bg}" })
    '';
  };
}
