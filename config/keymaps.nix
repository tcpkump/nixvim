{
  globals.mapleader = " ";
  globals.maplocalleader = ",";

  keymaps = [

    {
      key = "<leader>e";
      action = "<cmd>Neotree toggle filesystem reveal left<CR>";
      options.desc = "Toggle Explorer";
      mode = "n";
    }

    {
      key = "p";
      action = "p:let @+=@0<CR>";
      options.desc = "Paste and preserve register";
      mode = "x";
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

    {
      key = "n";
      action = "nzzzv";
      options.desc = "Move to next search result and center";
      mode = "n";
    }

    {
      key = "N";
      action = "Nzzzv";
      options.desc = "Move to previous search result and center";
      mode = "n";
    }
  ];
}
