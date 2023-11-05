local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

map("i", "pp", "<Esc>", opts) -- Go to "normal" mode

map("n", "<Esc>", ":nohlsearch<CR>", opts) -- Exit from open windows
map("n", "<Esc>", ":q<CR>", opts) -- Exit
map("n", "<Leader>qq", ":q!<CR>", opts) -- Force Exit (discard the operations made)
map("n", "<Leader>qw", ":x<CR>", opts) -- Save and Exit

              -- Add/Remove ()
map("n", "<Leader>0", "<cmd>norm ysiw)<CR>", opts)
map("n", "<Leader>9", "<cmd>norm ds)<CR>", opts)
              -- Add/Remove []
map("n", "<Leader>]", "<cmd>norm ysiw]<CR>", opts)
map("n", "<Leader>[", "<cmd>norm ds]<CR>", opts)
              -- Add/Remove {}
map("n", "<Leader>}", "<cmd>norm ysiw}<CR>", opts)
map("n", "<Leader>{", "<cmd>norm ds}<CR>", opts)
              -- Add/Remove ""
map("n", '<Leader>"', '<cmd>norm ysiw"<CR>', opts)
map("n", "<Leader>1", '<cmd>norm ds"<CR>', opts)
              -- Add/Remove ''
map("n", "<Leader>'", "<cmd>norm ysiw'<CR>", opts)
map("n", "<Leader>2", "<cmd>norm ds'<CR>", opts)

vim.keymap.set("n", "<Leader>i", "ysa", { remap = true }) -- Add around the first argument
-- vim.keymap.set('n', '<Leader>3', 'cs', { remap = true })

map("n", "<Leader>s", ":SnipRun<CR>", opts) -- Run the line where the cursor is
map("x", "<Leader>a", ":'<,'>SnipRun<CR>", opts) -- Run the lines marked with visual mode

map("n", "9", "<C-$>", opts) -- Go to the end of the line

map("n", "dw", 'vb"_d', opts) -- Delete a word backwards

map("n", "<C-o>", "<Esc>ggVG<CR>", opts) -- Select all text

map("i", "<C-backspace>", "<C-W>", opts) -- Ctrl + backspace

map("n", "<Leader>c", ":ChatGPT<CR>", opts)

map("n", "<C-p>", ":w<CR>", opts) -- Save
map("i", "<C-p>", "<Esc>:w<CR>", opts) -- Exit and save

map("n", "+", "<C-a>", opts) -- Increment a number
map("n", "-", "<C-x>", opts) -- Decrement a number

map("n", "<C-g>", ":Glow<CR>", opts) -- Preview current markdown buffer window

-- Window
map("n", "<Up>", ":resize -1<CR>", opts)
map("n", "<Down>", ":resize +1<CR>", opts)
map("n", "<Left>", ":vertical resize -1<CR>", opts)
map("n", "<Right>", ":vertical resize +1<CR>", opts)

-- Pages
map("n", "<C-s>", "<C-w>s", opts) -- Horizontal
map("n", "<C-a>", ":vsplit<CR>", opts) -- Vertical
map("n", "<C-w>", "<C-w>w", opts) -- The next page
map("n", "<C-x>", "<C-w>x", opts) -- Switch between them
map("n", "<C-h>", "<C-w>h", opts) -- Goes to the left page
map("n", "<C-j>", "<C-w>j", opts) -- Goes to the bottom page
map("n", "<C-k>", "<C-w>k", opts) -- Goes to the top page
map("n", "<C-l>", "<C-w>l", opts) -- Goes to the right page

-- map("n", "<A-k>", ":m .-2<CR>", opts) -- Decrement two lines
-- map("n", "<A-j>", ":m .+1<CR>", opts) -- Increment one line

map("n", "<Leader>fc", ":Format<CR>", opts)

map("n", "<C-n>", ":NvimTreeToggle<CR>", opts) -- Show folders/files
map("n", "<Leader>r", ":NvimTreeRefresh<CR>", opts)

map("n", "<Leader>bd", ":bd<CR>", opts) -- Delete page
map("n", "<Leader>bn", ":bn<CR>", opts) -- Pass to the next page
map("n", "<Leader>bp", ":bp<CR>", opts) -- Return to the next page

map("n", "<leader>tr", ":Pantran.motion_translate<CR>i", opts) -- Open the translate window (insert mode)

map("n", "<Leader>ff", ":Telescope find_files<CR>", opts) -- Open the search file window
map("n", "<Leader>fg", ":Telescope live_grep<CR>", opts)
map("n", "<Leader>fb", ":Telescope buffers<CR>", opts) -- Open the buffer window
map("n", "<Leader>fh", ":Telescope help_tags<CR>", opts)

map("n", "<Leader>do", ":lua vim.diagnostic.open_float()<CR>", opts)
map("n", "<Leader>dp", ":lua vim.diagnostic.goto_prev()<CR>", opts)
map("n", "<Leader>dn", ":lua vim.diagnostic.goto_next()<CR>", opts)
map("n", "<Leader>dl", ":lua vim.diagnostic.setloclist()<CR>", opts)

map("n", "<Leader>gd", ":Gitsigns diffthis<CR>", opts)
map("n", "<Leader>gb", ":Gitsigns toggle_current_line_blame<CR>", opts)

map("n", "<Leader>ab", ":lua require'dap'.toggle_breakpoint()<CR>", opts)
map("n", "<Leader>ar", ":lua require'dap'.repl.open()<CR>", opts)
map("n", "<Leader>au", ":lua require'dapui'.toggle()<CR>", opts)
map("n", "<F5>", ":lua require'dap'.continue()<CR>", opts)
map("n", "<F10>", ":lua require'dap'.step_over()<CR>", opts)
map("n", "<F11>", ":lua require'dap'.step_into()<CR>", opts)
map("n", "<F12>", ":lua require'dap'.step_out()<CR>", opts)
