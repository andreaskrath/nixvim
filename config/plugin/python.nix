{
  plugins.dap-python = {
    enable = true;
    adapterPythonPath = "python3";
    customConfigurations = [
      {
        name = "main";
        request = "launch";
        type = "debugpy";
        program = "./src/main.py";
      }
    ];
  };
}
