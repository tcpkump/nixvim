{
  extraConfigLua = ''
    vim.filetype.add({
      extension = {
        tf = "terraform",
        tfvars = "terraform",
      },
    })
  '';
}
