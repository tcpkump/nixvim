{
  plugins.copilot-lua = {
    enable = true;
    settings = {
      suggestion = {
        enabled = true;
        auto_trigger = false;
        keymap = {
          accept = "<Tab>";
          next = "<C-]>";
          prev = false;
          dismiss = "<C-c>";
        };
      };
      panel.enabled = false;
      filetypes = {
        yaml = true;
        markdown = true;
        help = false;
        gitcommit = false;
        gitrebase = false;
        hgcommit = false;
        svn = false;
        cvs = false;
        "." = false;
      };
    };
  };
}
