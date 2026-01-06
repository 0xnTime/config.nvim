local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- greatest remap ever
keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>", { desc = "Execute the current file" })
keymap.set("n", "<leader>cc", "<cmd>Compile<CR>", {desc = "Enter compile mode"})


-- keymap.set("n", "<M-j>", function()
--   if vim.opt.diff:get() then
--     vim.cmd [[normal! ]c]]
--   else
--     vim.cmd [[m .+1<CR>==]]
--   end
-- end)
--
-- keymap.set("n", "<M-k>", function()
--   if vim.opt.diff:get() then
--     vim.cmd [[normal! [c]]
--   else
--     vim.cmd [[m .-2<CR>==]]
--   end
-- end)

keymap.set("n", "<space>tt", function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled { bufnr = 0 }, { bufnr = 0 })
end)

keymap.set("n", "<C-j>", function()
  vim.diagnostic.get_next()
end)

-- Spliting

keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- These mappings control the size of splits (height/width)
keymap.set("n", "<M-,>", "<c-w>5<")
keymap.set("n", "<M-.>", "<c-w>5>")
keymap.set("n", "<M-t>", "<C-W>+")
keymap.set("n", "<M-s>", "<C-W>-")

keymap.set("n", "<c-j>", "<c-w><c-j>")
keymap.set("n", "<c-k>", "<c-w><c-k>")
keymap.set("n", "<c-l>", "<c-w><c-l>")
keymap.set("n", "<c-h>", "<c-w><c-h>")

keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
keymap.set("n", "=ap", "ma=ap'a")

keymap.set({ "n", "v" }, "<leader>d", '"_d')

keymap.set("n", "<C-x><C-k>", "<cmd>cnext<CR>zz")
keymap.set("n", "<C-x><C-j>", "<cmd>cprev<CR>zz")
keymap.set("n", "<C-c><C-k>", "<cmd>lnext<CR>zz")
keymap.set("n", "<C-c><C-j>", "<cmd>lprev<CR>zz")

keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)

