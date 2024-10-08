{
  plugins.telescope = {
    enable = true;
    extensions = {
      undo.enable = true;
      live-grep-args.enable = true;
    };
  };

  keymaps = [
    {
      key = "<leader>ff";
      action = "<cmd>Telescope find_files<CR>";
      options.desc = "Find string in filenames";
      mode = "n";
    }

    {
      key = "<leader>fw";
      action = "<cmd>Telescope live_grep_args<CR>";
      options.desc = "Grep string in files";
      mode = "n";
    }

    {
      key = "<leader>fg";
      action = "<cmd>Telescope git_status<CR>";
      options.desc = "Search modified files";
      mode = "n";
    }

    {
      key = "<leader>fu";
      action = "<cmd>Telescope undo<CR>";
      options.desc = "Grep string in undotree";
      mode = "n";
    }

    {
      key = "gr";
      action = "<cmd>Telescope lsp_references<CR>";
      options.desc = "Find references";
      mode = "n";
    }
  ];
}
