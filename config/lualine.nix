{
  plugins.lualine = {
    enable = true;
    settings = {
      options.globalstatus = true;
      sections.lualine_c = [
        {
          __unkeyed-1 = "filename";
          file_status = true;
          path = 1;
        }
      ];
    };
  };
}

