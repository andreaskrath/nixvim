{
  plugins.dap = {
    enable = true;

    configurations = {
      python = [
        {
          type = "python";
          request = "launch";
          name = "Project Root (python)";
          program = "\${file}";
          cwd = "\${workspacFolder}";
          justMyCode = true;
          console = "integratedTerminal";
        }
        {
          type = "debugpy";
          request = "launch";
          name = "Project Root (python)";
          program = "\${file}";
          cwd = "\${workspacFolder}";
          justMyCode = true;
          console = "integratedTerminal";
        }
      ];
    };
  };
}
