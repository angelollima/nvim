local Rule = require('nvim-autopairs.rule')
require("nvim-autopairs").setup({})

require('nvim-autopairs').add_rules {
    Rule("%<%>$", "</>", { 'typescript', 'typescriptreact', 'javascript', 'javascriptreact' })
            :use_regex(true),
}
