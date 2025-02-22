{
  plugins.lsp = {
    enable = true;
    servers = {
      ansiblels.enable = true;
      bashls.enable = true;
      clangd.enable = true;
      dockerls.enable = true;
      gopls.enable = true;
      helm_ls.enable = true;
      jsonls.enable = true;
      nixd.enable = true;
      perlnavigator.enable = true;
      phpactor.enable = true;
      pyright.enable = true;
      ruby_lsp.enable = true;
      rust_analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
      };
      sqls.enable = true;
      terraformls.enable = true;
      ts_ls.enable = true;
      yamlls.enable = false; # sick of fighting with it and helm
      zls.enable = true;
    };
    keymaps = {
      silent = true;
      diagnostic = {
        "<leader>cd" = "open_float";
        "[d" = "goto_prev";
        "]d" = "goto_next";
      };
      lspBuf = {
        "gd" = "definition";
        "gt" = "type_definition";
        "<leader>ca" = "code_action";
        "<leader>rn" = "rename";
      };
    };
  };
}
