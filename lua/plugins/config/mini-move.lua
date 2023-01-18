require('mini.move').setup({
  mappings = {
    -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
    left = '<A-h>',
    down = '<A-j>',
    right = '<A-l>',
    up = '<A-k>',

    -- Move current line in Normal mode
    line_left = '<A-h>',
    line_right = '<A-l>',
    line_down = '<A-j>',
    line_up = '<A-k>',
  },
})
