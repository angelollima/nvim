require'sniprun'.setup({
  display = {
    "Classic",                    --# display results in the command-line  area
    -- "NvimNotify",              --# display with the nvim-notify plugin
  -- "VirtualTextOk",             --# display ok results as virtual text (multiline is shortened)
    -- "VirtualText",             --# display results as virtual text
    -- "TempFloatingWindow",      --# display results in a floating window
    -- "LongTempFloatingWindow",  --# same as above, but only long results. To use with VirtualText[Ok/Err]
    -- "Terminal",                --# display results in a vertical split
    -- "TerminalWithCode",        --# display results and code history in a vertical split
    -- "Api"                      --# return output to a programming interface
  },

  live_display = { "VirtualTextOk" }, --# display mode used in live_mode
})
