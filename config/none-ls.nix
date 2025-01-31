{
  plugins.lsp-format.enable = true;
  plugins.none-ls = {
    enable = true;
    enableLspFormat = true;
    sources.formatting = {

      packer.enable = true;
      packer.package = null;

      # puppet_lint.enable = true;

      goimports.enable = true;
      gofmt.enable = true;
    };
    sources.diagnostics = {

      # puppet_lint.enable = true;

      terragrunt_validate.enable = true;
      tfsec.enable = true;
    };
  };
}
