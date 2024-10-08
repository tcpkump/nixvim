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
