return {
  {
    "agude/vim-eldar",
    lazy = false,
    priority = 1000,
    config = function()
      -- Load the colorscheme
      vim.cmd.colorscheme("eldar")
    end,
  },
}
