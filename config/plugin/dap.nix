{
  plugins.dap = {
    enable = true;

    configurations = {
      python = [
        {
          type = "debugpy";
          request = "launch";
          name = "File";
          program = "\${file}";
          cwd = "\${workspaceFolder}";
          justMyCode = true;
          console = "integratedTerminal";
        }

        {
          type = "debugpy";
          request = "launch";
          name = "Main";
          program = "\${workspaceFolder}/src/main.py";
          cwd = "\${workspaceFolder}";
          justMyCode = true;
          console = "integratedTerminal";
        }
      ];
    };
  };
}
