{
  opts = {
    updatetime = 100;

    spell = false;
    conceallevel = 1;

    number = true;

    expandtab = true;
    shiftwidth = 2;
    tabstop = 2;

    textwidth = 120;
    formatoptions = "cqj"; # Removes 't' https://neovim.io/doc/user/options.html#'formatoptions'

    ignorecase = true;
    incsearch = true;
    smartcase = true;
    wildmode = "list:longest";


    wrap = false;

    swapfile = false;
    undofile = true;

    splitright = true;
    splitbelow = true;

    guicursor = [
      "n-v-c-sm:block"
      "i-ci-ve:ver25"
      "r-cr-o:hor20"
      "i:blinkoff750-blinkon750-Cursor/lCursor" # insert mode: blinking settings
    ];
  };
}
