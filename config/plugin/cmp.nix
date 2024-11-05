{
  plugins = {
    cmp = {
      enable = true;
      settings = {
        autoEnableSources = true;

        performance = {
          debounce = 60;
          fetchingTimeout = 200;
          maxViewEntries = 10;
        };

        formatting = {
          fields = [
            "abbr"
            "kind"
            "menu"
          ];

          format.__raw = ''
            function(entry, vim_item)
              local label = vim_item.abbr
              local truncated_label = vim.fn.strcharpart(label, 0, 25)
              if truncated_label ~= label then
                vim_item.abbr = truncated_label .. "…"
              elseif string.len(label) < 25 then
                local padding = string.rep(" ", 25 - string.len(label))
                vim_item.abbr = label .. padding
              end

              local function safe_concat(value)
                  return value ~= nil and tostring(value) or ""
              end

              local ci = entry.completion_item
              vim_item.menu = "a:" .. safe_concat(ci.labeldetails) ..
                              " b:" .. safe_concat(ci.kind) ..
                              " c:" .. safe_concat(ci.tags) ..
                              " d:" .. safe_concat(ci.detail) ..
                              " e:" .. safe_concat(ci.preselect) ..
                              " f:" .. safe_concat(ci.sorttext) ..
                              " g:" .. safe_concat(ci.filtertext) ..
                              " h:" .. safe_concat(ci.inserttext) ..
                              " i:" .. safe_concat(ci.inserttextformat) ..
                              " j:" .. safe_concat(ci.inserttextmode) ..
                              " k:" .. safe_concat(ci.textedit) ..
                              " l:" .. safe_concat(ci.textedittext) ..
                              " m:" .. safe_concat(ci.additionaltextedits) ..
                              " n:" .. safe_concat(ci.commitcharacters) ..
                              " o:" .. safe_concat(ci.command) ..
                              " p:" .. safe_concat(ci.data) ..
                              " q:" .. safe_concat(ci.cmp)

              -- if entry.completion_item.insertText then
              --   local cut_off = string.find(entry.completion_item.insertText, ")")
              --   if cut_off then
              --     vim_item.menu = string.sub(entry.completion_item.insertText, 1, cut_off)
              --   else
              --     vim_item.menu = entry.completion_item.insertText
              --   end
              -- end

              return vim_item
            end
          '';
        };

        sources = [
          {
            name = "nvim_lsp";
            entry_filter.__raw = ''
              function(entry, ctx)
                return require("cmp.types").lsp.CompletionItemKind[entry:get_kind()]  ~= "Text"
              end
            '';
          }
          {
            name = "buffer";
            entry_filter.__raw = ''
              function(entry, ctx)
                return require("cmp.types").lsp.CompletionItemKind[entry:get_kind()]  ~= "Text"
              end
            '';
          }
          {
            name = "path"; # file system paths
            keywordLength = 3;
          }
        ];

        window = {
          completion = {
            scrollbar = true;
          };
        };

        mapping = {
          "<C-j>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 'n', 'c'})";
          "<C-k>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 'n', 'c'})";
          "<C-c>" = "cmp.mapping(cmp.mapping.abort(), {'i', 'n', 'c'})";
          "<C-b>" = "cmp.mapping(cmp.mapping.scroll_docs(-4), {'i', 'n'})";
          "<C-f>" = "cmp.mapping(cmp.mapping.scroll_docs(4), {'i', 'n'})";
          "<CR>" = "cmp.mapping(cmp.mapping.confirm({ select = true }), {'i', 'n'})";
        };
      };
    };
    cmp-nvim-lsp = {
      enable = true;
    }; # lsp
    cmp-buffer = {
      enable = true;
    };
    cmp-path = {
      enable = true;
    }; # file system paths
    cmp-cmdline = {
      enable = true;
    }; # autocomplete for cmdline
  };
  extraConfigLua = ''
    local cmp = require'cmp'

    -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline({'/', "?" }, {
      sources = {
        { name = 'buffer' }
      }
    })

    -- Use cmdline source for ':' (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline(':', {
      sources = cmp.config.sources({
        { name = 'cmdline' }
      })
    })
  '';
}
