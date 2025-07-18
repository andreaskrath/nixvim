{
  plugins.neogit = {
    enable = true;

    settings = {
      disable_hint = true;
      fetch_after_checkout = false;

      status = {
        show_head_commit_hash = false;
      };

      integrations = {
        telescope = true;
      };

      sections = {
        rebase = {
          folded = false;
          hidden = false;
        };
        recent = {
          folded = false;
          hidden = false;
        };
        unpulled_upstream = {
          folded = false;
          hidden = false;
        };
        unpulled_pushRemote = {
          folded = false;
          hidden = false;
        };
      };
    };
  };
}
