{
  plugins.lsp-format.enable = true;
  plugins.none-ls = {
    enable = true;
    enableLspFormat = true;
    sources.formatting = {

      packer.enable = true;
      packer.package = null;

      puppet_lint.enable = true;

      terraform_fmt.enable = true;
      terraform_fmt.package = null;

      terragrunt_fmt.enable = true;

      hclfmt.enable = true;

      goimports.enable = true;
      gofmt.enable = true;
    };
    sources.diagnostics = {

      puppet_lint.enable = true;

      terraform_validate.enable = true;
      terraform_validate.package = null;
      terragrunt_validate.enable = true;
      tfsec.enable = true;
    };
  };
}
