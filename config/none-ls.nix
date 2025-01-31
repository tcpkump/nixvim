{
  plugins.lsp-format.enable = true;
  plugins.none-ls = {
    enable = true;
    sources.diagnostics = {
      puppet_lint.enable = true;
      terragrunt_validate.enable = true;
      tfsec.enable = true;
    };
  };
}
