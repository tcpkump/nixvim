{
  plugins.grug-far.enable = true;

  keymaps = [
    {
      key = "<leader>fr";
      action = "<cmd>GrugFar<CR>";
      options.desc = "Find and Replace";
      mode = "n";
    }
  ];
}
