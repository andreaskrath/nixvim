{
  plugins.dap = {
    enable = true;

    configurations = {
      python = [
        {
          type = "debugpy";
          request = "launch";
          name = "Debug";
          program = "\${file}";
          cwd = "\${workspaceFolder}";
          justMyCode = true;
          console = "integratedTerminal";
        }
      ];
    };
  };
}
