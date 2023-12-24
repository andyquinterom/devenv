vim.g.myLang=0
vim.g.myLangList={"en_us", "es"}

local function ToggleSpell()
    vim.g.myLang = vim.g.myLang + 1
    if vim.g.myLang > #vim.g.myLangList then vim.g.myLang = 0 end
    if vim.g.myLang == 0 then
        vim.opt_local.spell = false
    else
        vim.bo.spelllang = vim.g.myLangList[vim.g.myLang]
        vim.opt_local.spell = true
    end
end

vim.cmd("hi clear SpellBad")
vim.cmd("hi SpellBad cterm=underline")

local nmap = require("keymap").nmap
nmap('<C-S>', ToggleSpell)


