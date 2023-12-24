local function setup_css()
    vim.bo.shiftwidth = 2
    vim.bo.tabstop = 2
    vim.bo.expandtab = true
end

vim.api.nvim_create_autocmd("BufAdd", {
    pattern = {"*.css", "*.scss", "*.sass"},
    callback = setup_css
})
