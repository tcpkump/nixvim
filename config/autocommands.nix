{
  autoCmd = [
    {
      command = "lua vim.opt_local.commentstring = '# %s'";
      event = [ "BufEnter" "BufWinEnter" ];
      pattern = [ "*.tf" "*.tfvars" ];
    }
  ];
}
