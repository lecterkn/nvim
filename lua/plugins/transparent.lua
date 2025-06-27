return {
    'xiyaowong/transparent.nvim',
    config = function()
        vim.keymap.set("n", "<leader>tp", vim.cmd.TransparentToggle)
        require("transparent").setup({
          groups = {
            'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
            'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
            'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
            'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
            'EndOfBuffer',
          },
          extra_groups = {},
          exclude_groups = {},
          on_clear = function() end,
        })
        require('transparent').clear_prefix('BufferLine')
        require('transparent').clear_prefix('Telescope')
    end,
}
