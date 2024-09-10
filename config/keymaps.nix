{
  globals.mapleader = " ";

  keymaps = [

    {
      key = "<leader>e";
      action = "<cmd>Neotree toggle filesystem reveal left<CR>";
      options.desc = "Toggle Explorer";
      mode = "n";
    }

    {
      key = "<leader>ff";
      action = "<cmd>Telescope find_files<CR>";
      options.desc = "Find string in filenames";
      mode = "n";
    }

    {
      key = "<leader>fw";
      action = "<cmd>Telescope live_grep<CR>";
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

    {
      key = "p";
      action = "\"_dP";
      options.desc = "Paste without yanking";
      mode = "v";
    }

    {
      key = "<leader>y";
      action = "\"+y";
      options.desc = "Yank to system clipboard";
    }

    {
      key = "<leader>d";
      action = "\"_d";
      options.desc = "Delete without yanking";
    }

    {
      key = "<leader>p";
      action = "\"+p";
      options.desc = "Paste and yank to system clipboard";
    }

    {
      key = "<C-s>";
      action = "<cmd>w<CR>";
      options.desc = "Save file";
    }
  ];
}
