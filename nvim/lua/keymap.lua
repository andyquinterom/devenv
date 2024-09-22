local M = {}

local function bind(op, outer_opts)
    outer_opts = outer_opts or {noremap = true}
    return function(lhs, rhs, opts)
        opts = vim.tbl_extend("force",
            outer_opts,
            opts or {}
        )
        vim.keymap.set(op, lhs, rhs, opts)
    end
end

M.nmap = bind("n", {noremap = false})
M.nnoremap = bind("n")
M.vnoremap = bind("v")
M.xnoremap = bind("x")
M.inoremap = bind("i")
vim.cmd("tnoremap <C-Esc> <C-\\><C-n>")

telescope = require('telescope.builtin')

vim.keymap.set("n", "<c-]>", vim.lsp.buf.definition, keymap_opts)
vim.keymap.set("n", "K", vim.lsp.buf.hover, keymap_opts)
vim.keymap.set("n", "Y", vim.diagnostic.open_float, keymap_opts)
vim.keymap.set("n", "gtd", telescope.lsp_type_definitions, keymap_opts)
vim.keymap.set("n", "<c-k>", vim.lsp.buf.signature_help, keymap_opts)
vim.keymap.set("n", "gi", telescope.lsp_implementations, keymap_opts)
vim.keymap.set("n", "gr", telescope.lsp_references, keymap_opts)
vim.keymap.set("n", "gR", vim.lsp.buf.rename, keymap_opts)
vim.keymap.set("n", "g0", vim.lsp.buf.document_symbol, keymap_opts)
vim.keymap.set("n", "gw", telescope.lsp_workspace_symbols, keymap_opts)
vim.keymap.set("n", "gD", telescope.diagnostics, keymap_opts)
vim.keymap.set("n", "gd", telescope.lsp_definitions, keymap_opts)
vim.keymap.set("n", "ga", vim.lsp.buf.code_action, keymap_opts)
vim.keymap.set("n", "gc", telescope.lsp_incoming_calls, keymap_opts)
vim.keymap.set("n", "<Leader>i", function() vim.diagnostic.open_float(nil, { focusable = false }) end, keymap_opts)

return M

