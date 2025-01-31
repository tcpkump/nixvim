{
  plugins.mini = {
    enable = true;
    modules = {
      ai = {};
      comment = {};
      pairs = {
        mappings = {
          "`" = { action = "closeopen"; pair = "``"; neigh_pattern = "[^\\`]."; register = { cr = false; }; };
          "\"" = { action = "closeopen"; pair = "\"\""; neigh_pattern = "[^\\\"]."; register = { cr = false; }; };
        };
      };
      surround = {};
    };
  };
}
