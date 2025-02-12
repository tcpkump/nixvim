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

    {
      key = "<leader>gm";
      action = "<cmd>Telescope git_status<CR>";
      options.desc = "Search modified files";
      mode = "n";
    }

    {
      key = "<leader>gcb";
      action = "<cmd>Telescope git_bcommits<CR>";
      options.desc = "Search buffer commits";
      mode = "n";
    }

    {
      key = "<leader>gcc";
      action = "<cmd>Telescope git_commits<CR>";
      options.desc = "Search all commits";
      mode = "n";
    }
  ];
}
