{
  autoCmd = [
    {
      command = "lua vim.opt_local.commentstring = '# %s'";
      event = [
        "BufEnter"
        "BufWinEnter"
      ];
      pattern = [
        "*.tf"
        "*.tfvars"
      ];
    }
    {
      event = [ "FileType" ];
      pattern = [ "markdown" ];
      command = "lua vim.opt_local.wrap = true; vim.opt_local.linebreak = true";
    }
  ];
}
