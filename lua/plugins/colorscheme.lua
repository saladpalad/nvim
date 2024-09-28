return {
  {
    'nyoom-engineering/oxocarbon.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      -- Load the colorscheme
      vim.cmd.colorscheme 'oxocarbon'

      -- Set up transparency
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "*",
        callback = function()
          -- Make the background transparent
          vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
          vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
          
          -- You might also want to make the following transparent:
          vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
          vim.api.nvim_set_hl(0, "LineNr", { bg = "NONE" })
          vim.api.nvim_set_hl(0, "Folded", { bg = "NONE" })
          vim.api.nvim_set_hl(0, "NonText", { bg = "NONE" })
          vim.api.nvim_set_hl(0, "SpecialKey", { bg = "NONE" })
          vim.api.nvim_set_hl(0, "VertSplit", { bg = "NONE" })
          vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "NONE" })
        end
      })
    end
  }
}
