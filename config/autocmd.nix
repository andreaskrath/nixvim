{
  autoCmd = [
    # open telescope in find files on starting vim
    {
      event = ["VimEnter"];
      command = "Telescope find_files";
    }

    # disable semantic highlighting
    {
      event = ["LspAttach"];
      callback = {
        __raw = ''
          function(args)
            local client = vim.lsp.get_client_by_id(args.data.client_id)
            client.server_capabilities.semanticTokensProvider = nil
          end
        '';
      };
    }
  ];
}
