{
  plugins.conform-nvim = {
    enable = true;

    settings = {
      nofify_on_error = true;

      format_on_save = {
        lspFallback = true;
        timeoutMs = 500;
      };

      formatters_by_ft = {
        nix = ["alejandra"];
        rust = ["rustfmt"];
        toml = ["taplo"];
        go = ["gofmt"];
        haskell = ["ormolu"];
        javascript = ["biome"];
        cpp = ["clang-format"];
        python = ["ruff_format"];
      };

      formatters = {
        ruff_format = {
          prepend_args = ["--line-length" "120"];
        };
      };
    };
  };
}
