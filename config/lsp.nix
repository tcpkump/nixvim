{
  plugins.lsp = {
    enable = true;
    servers = {
      ansiblels.enable = true;
      bashls.enable = true;
      dockerls.enable = true;
      gopls.enable = true;
      helm-ls.enable = true;
      jsonls.enable = true;
      nixd.enable = true;
      perlpls.enable = true;
      phpactor.enable = true;
      pyright.enable = true;
      ruby-lsp.enable = true;
      rust-analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
      };
      sqls.enable = true;
      terraformls.enable = true;
      ts-ls.enable = true;
      yamlls.enable = false; # sick of fighting with it and helm
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
