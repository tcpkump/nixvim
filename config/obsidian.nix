{
  plugins.obsidian = {
    enable = true;
    settings.workspaces = [
      {
        name = "workspace";
        path = "~/obsidian/";
      }
    ];

  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>wo";
      action = "<cmd>ObsidianQuickSwitch<cr>";
      options = {
        desc = "Open Wiki (Obsidian)";
      };
    }
  ];
}
