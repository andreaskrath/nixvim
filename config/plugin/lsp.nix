{
  plugins.lsp = {
    enable = true;

    keymaps = {
      silent = true;
      lspBuf = {
        gd = {
          action = "definition";
          desc = "Goto definition";
        };
        gD = {
          action = "declaration";
          desc = "Goto declaration";
        };
        gt = {
          action = "type_definition";
          desc = "Goto type definition";
        };
        "<leader>r" = {
          action = "rename";
          desc = "Rename";
        };
      };
    };

    servers = {
      nixd = {
        enable = true;
        package = null;
      };

      gopls = {
        enable = true;
        package = null;
      };

      rust_analyzer = {
        enable = true;
        package = null;
        installCargo = false;
        installRustc = false;

        settings = {
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

      taplo = {
        enable = true;
        package = null;
      };

      marksman = {
        enable = true;
        package = null;
      };

      hls = {
        enable = true;
        package = null;
        installGhc = false;
      };
    };
  };
}
