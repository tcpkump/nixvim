{
  plugins.lsp-format.enable = false;
  plugins.none-ls = {
    enable = true;
    sources.diagnostics = {
      puppet_lint.enable = true;
      terragrunt_validate.enable = true;
      trivy.enable = true;
    };
  };
}
