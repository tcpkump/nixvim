{ pkgs, ... }: {
  plugins.neo-tree = {
    enable = true;
    addBlankLineAtTop = true;
    popupBorderStyle = "rounded";
    sortCaseInsensitive = true;
    closeIfLastWindow = true;
    buffers.followCurrentFile.enabled = true;
    buffers.followCurrentFile.leaveDirsOpen = true;
    filesystem = {
      filteredItems.alwaysShow = [ 
        ".gitattributes"
        ".gitea"
        ".github"
        ".gitignore"
        ".pre-commit-config.yaml"
        ".terraform"
        ".terraform.lock.hcl"
      ];
      useLibuvFileWatcher = true;
    };
  };

  extraPlugins = with pkgs.vimPlugins; [ nvim-window-picker ];

  extraConfigLua = ''
    require 'window-picker'.setup({
      -- switch selection chars to dvorak home row
      selection_chars = 'arstdhneio';
      hint = 'floating-big-letter';
    })
  '';

  plugins.web-devicons.enable = true;
}
