local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Format Document
keymap.set("n", "<leader>fm", function()
  vim.lsp.buf.format({
    async = true,
  })
end, {
  desc = "Format Document",
})

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Tabnext
keymap.set("n", "<tab>", ":tabnext<Return>", opts)

-- Close current tab
keymap.set("n", "<leader>x", ":tabclose<CR>", { desc = "Close current tab" })

keymap.set("n", "<leader>x", ":bd<CR>", { desc = "Close buffer" })

-- Toggle comment on selected line(s) with <Space> + /
keymap.set("n", "<leader>/", "gcc", { desc = "Toggle comment (line)" })
keymap.set("v", "<leader>/", "gc", { desc = "Toggle comment (selection)" })
