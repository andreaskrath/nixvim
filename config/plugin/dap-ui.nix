{
  plugins.dap-ui = {
    enable = true;
    settings = {
      layouts = [
        {
          elements = [
            {
              id = "scopes";
              size = 0.5;
            }
            {
              id = "console";
              size = 0.5;
            }
          ];
          position = "bottom";
          size = 20;
        }
        {
          elements = [
            {
              id = "stacks";
              size = 1;
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
    '';
  };
}
