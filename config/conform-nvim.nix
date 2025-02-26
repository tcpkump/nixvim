{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      format_on_save = {
        lspFallback = true;
        timeoutMs = 500;
      };
      formatters_by_ft = {
        go = ["gofmt" "goimports"];
        hcl = ["hcl" "packer_fmt"];
        nix = ["nixfmt"];
        puppet = ["puppet-lint"];
        terraform = ["terraform_fmt"];
        "terraform-vars" = ["terraform_fmt"];
        zig = ["prettierd"];
      };
    };
  };
}

