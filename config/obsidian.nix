{
  plugins.obsidian = {
    enable = true;
    settings = {
      completion = {
        min_chars = 2;
        nvim_cmp = true;
      };
      dir = "~/Documents/Personal";
    };
  };

  keymaps = [
    {
      key = "<leader>ww";
      action = "<cmd>ObsidianQuickSwitch<CR>";
      options.desc = "Obsidian find file";
      mode = "n";
    }
    {
      key = "<leader>wfw";
      action = "<cmd>ObsidianSearch<CR>";
      options.desc = "Obsidian find word";
      mode = "n";
    }
    {
      key = "<leader>wt";
      action = "<cmd>ObsidianNew Work/TODO.md<CR>";
      options.desc = "Obsidian work TODO note";
      mode = "n";
    }
    {
      key = "<leader>wd";
      action = "<cmd>ObsidianToday<CR>";
      options.desc = "Obsidian note for today";
      mode = "n";
    }
    {
      key = "<leader>wy";
      action = "<cmd>ObsidianYesterday<CR>";
      options.desc = "Obsidian note for yesterday";
      mode = "n";
    }
  ];
}
