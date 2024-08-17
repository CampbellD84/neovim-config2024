return {
  "uloco/bluloco.nvim",
  lazy = false,
  priority = 1000,
  dependencies = { 'rktjmp/lush.nvim' },
  config = function()
    require("bluloco").setup({
      style = dark,
      italics = true,
      transparency = true
    })

    vim.cmd('colorscheme bluloco')
  end
}

