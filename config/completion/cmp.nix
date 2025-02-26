{
  plugins = {
    luasnip = {
      enable = true;
      settings = {
        enable_autosnippets = false;
        store_selection_keys = "<Tab>";
      };
    };
    cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
        preselect = "cmp.PreselectMode.None";
        matching.disallow_partial_fuzzy_matching = false;
        snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";
        window = {
          completion = {
            border = "rounded";
            winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None";
            scrollbar = false;
            scrolloff = 2;
          };
          documentation = {
            border = "rounded";
            winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None";
            max_height = 20;
          };
        };
        sources = [
          {name = "copilot";}
          {name = "nvim_lsp";}
          {name = "luasnip";}
          {name = "calc";}
          {name = "treesitter";}
          {name = "fuzzy_path";}
          {name = "path";}
          {name = "buffer";}
        ];
        mapping = {
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<C-j>" = "cmp.mapping.select_next_item()";
          "<C-k>" = "cmp.mapping.select_prev_item()";
          "<C-e>" = "cmp.mapping.abort()";
          "<CR>" = "cmp.mapping.confirm({ select = false })";
          "<S-CR>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })";
        };
      };
    };
    cmp-fuzzy-path.enable = true;
  };
}
