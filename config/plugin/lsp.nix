{
  plugins.lsp = {
    enable = true;

    servers = {
      nixd = {
        enable = true;
      };

      gopls = {
        enable = true;
      };
    };
  };
}
