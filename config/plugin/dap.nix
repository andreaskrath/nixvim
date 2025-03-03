{
  plugins.dap = {
    enable = true;

    configurations = {
      python = [
        {
          type = "python";
          request = "launch";
          name = "Project Root (python)";
          program = "\${workspaceFolder}/src/main.py";
          envFile = "\${workspaceFolder}/.env";
          justMyCode = true;
          console = "integratedTerminal";
        }
        {
          type = "debugpy";
          request = "launch";
          name = "Project Root (debugpy)";
          program = "\${workspaceFolder}/src/main.py";
          envFile = "\${workspaceFolder}/.env";
          justMyCode = true;
          console = "integratedTerminal";
        }
      ];
    };
  };
}
