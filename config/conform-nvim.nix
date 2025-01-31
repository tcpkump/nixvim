{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      format_on_save = {
        lspFallback = true;
        timeoutMs = 500;
      };
      formatters_by_ft = {
        terraform = ["terraform_fmt"];
        "terraform-vars" = ["terraform_fmt"];
        hcl = ["hcl"];
      };
    };
  };
}

