{
  plugins.rustaceanvim = {
    enable = true;
    rustAnalyzerPackage = null;

    settings = {
      tools.test_executor = "background";

      server = {
        dap.adapters.lldb = {
          type = "server";
          port = "${''$''}{port}";
          executable = {
            command = "codelldb";
            args = ["--port" "${''$''}{port}"];
          };
        };
      };

      default_settings = {
        rust-analyzer = {
          procMacro.enable = true;

          cargo = {
            autoreload = true;
            buildScripts.enable = true;
          };

          completion = {
            autoimport.enable = true;
            autoself.enable = true;
          };

          check = {
            command = "clippy";
            extraArgs = ["--tests" "--" "-W" "clippy::all"];
          };

          lens = {
            enable = true;
            debug.enable = true;
            implementations.enable = true;
            references = {
              adt.enable = true;
              enumVariant.enable = true;
              method.enable = true;
              trait.enable = true;
            };
          };
        };
      };
    };
  };
}
