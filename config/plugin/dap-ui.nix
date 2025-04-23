{
  plugins.dap-ui = {
    enable = true;
    settings = {
      layouts = [
        {
          # elements are displayed in the opposite order of their definition
          elements = [
            {
              id = "console";
              size = 0.5;
            }
            {
              id = "scopes";
              size = 0.5;
            }
          ];
          position = "bottom";
          size = 20;
        }
        {
          elements = [
            {
              id = "watches";
              size = 0.5;
            }
            {
              id = "stacks";
              size = 0.5;
            }
          ];
          position = "left";
          size = 50;
        }
      ];
    };

    luaConfig.post = ''
      local dap, dapui = require("dap"), require("dapui")
      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end

      -- Function to toggle REPL in popup
      local repl_popup_visible = false
      local repl_win_id = nil

      local function toggle_repl_popup()
        if repl_popup_visible and repl_win_id and vim.api.nvim_win_is_valid(repl_win_id) then
          vim.api.nvim_win_close(repl_win_id, true)
          repl_popup_visible = false
          return
        end

        local buf = vim.api.nvim_create_buf(false, true)
        local width = math.floor(vim.o.columns * 0.8)
        local height = math.floor(vim.o.lines * 0.8)
        local row = math.floor((vim.o.lines - height) / 2)
        local col = math.floor((vim.o.columns - width) / 2)

        repl_win_id = vim.api.nvim_open_win(buf, true, {
          relative = "editor",
          width = width,
          height = height,
          row = row,
          col = col,
          border = "rounded",
          style = "minimal",
        })

        -- Render REPL in the window
        dapui.elements.repl.render(buf, repl_win_id, {})
        repl_popup_visible = true

        -- Close window on q, Esc
        vim.keymap.set("n", "q", function()
          vim.api.nvim_win_close(repl_win_id, true)
          repl_popup_visible = false
        end, { buffer = buf })
        vim.keymap.set("n", "<Esc>", function()
          vim.api.nvim_win_close(repl_win_id, true)
          repl_popup_visible = false
        end, { buffer = buf })
      end

      -- Set up keymap
      vim.keymap.set("n", "<leader>dr", toggle_repl_popup, { desc = "Toggle DAP REPL Popup" })
    '';
  };
}
