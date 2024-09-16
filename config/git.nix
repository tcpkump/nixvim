{
  plugins.gitsigns.enable = true;
  plugins.lazygit = {
    enable = true;
  };

  plugins.gitlinker = {
    enable = true;
    callbacks = {
      "github.com" = "get_github_type_url";
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>gg";
      action = "<cmd>LazyGit<CR>";
      options = {
        desc = "LazyGit (root dir)";
      };
    }
  ];
}
