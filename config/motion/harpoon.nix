{
  plugins.harpoon = {
    enable = true;
    enableTelescope = true;
  };
  keymaps = [
    {
      key = "<leader><leader>a";
      action.__raw = "function() require'harpoon':list():add() end";
      options.desc = "Harpoon: add file";
      mode = "n";
    }
    {
      key = "<leader><leader>e";
      action.__raw = "function() require'harpoon'.ui:toggle_quick_menu(require'harpoon':list()) end";
      options.desc = "Harpoon: toggle quick menu";
      mode = "n";
    }
    {
      key = "<C-n>";
      action.__raw = "function() require'harpoon'.ui:nav_next() end";
      options.desc = "Harpoon: next file";
      mode = "n";
    }
    {
      key = "<C-p>";
      action.__raw = "function() require'harpoon'.ui:nav_prev() end";
      options.desc = "Harpoon: prev file";
      mode = "n";
    }
  ];
}
