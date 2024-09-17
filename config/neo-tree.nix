{ pkgs, ... }: {
  plugins.neo-tree = {
    enable = true;
    closeIfLastWindow = true;
    buffers.followCurrentFile.enabled = true;
    buffers.followCurrentFile.leaveDirsOpen = true;
    filesystem.filteredItems.alwaysShow = [ 
      ".gitignore"
      ".gitattributes"
      ".pre-commit-config.yaml"
      ".terraform"
      ".terraform.lock.hcl"
    ];
  };

  extraPlugins = with pkgs.vimPlugins; [ nvim-window-picker ];

  extraConfigLua = ''
    require 'window-picker'.setup({
      -- switch selection chars to dvorak home row
      selection_chars = 'arstdhneio';
      hint = 'floating-big-letter';
    })
  '';
}
