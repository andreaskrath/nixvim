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
      };
    };
  };
}
