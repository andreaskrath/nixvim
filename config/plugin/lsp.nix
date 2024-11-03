{
  plugins.lsp = {
    enable = true;

    servers = {
      nixd = {
        enable = true;
        package = null;
      };

      gopls = {
        enable = true;
        package = null;
      };
    };
  };
}
