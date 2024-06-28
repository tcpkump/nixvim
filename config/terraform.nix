{pkgs, ...}: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "terraform";
      src = pkgs.fetchFromGitHub {
        owner = "mvaldes14";
        repo = "terraform.nvim";
        rev = "efa6c52fa139180f102a3f1215039452bb0e284f";
        hash = "sha256-vcq41dalV8VgwW/0fWkgNDuXPhpMc3pAlvv3CXyOQbQ=";
      };
    })
  ];

  keymaps = [
    {
      mode = "n";
      key = "<leader>tfp";
      action = "<cmd>TerraformPlan<cr>";
      options = {
        desc = "Terraform Plan";
      };
    }
    {
      mode = "n";
      key = "<leader>tfe";
      action = "<cmd>TerraformExplore<cr>";
      options = {
        desc = "Terraform Explore Resources";
      };
    }
    {
      mode = "n";
      key = "<leader>tfv";
      action = "<cmd>TerraformValidate<cr>";
      options = {
        desc = "Terraform Validate";
      };
    }
  ];
}
