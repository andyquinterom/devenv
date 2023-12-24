local nmap = require("keymap").nmap
local inoremap = require("keymap").inoremap

nmap('<Leader>ot', ':bel split term://zsh<cr>')
nmap('<Leader>or', ':call StartR("R")')

nmap('<A-y>', "+y<movement>")
nmap('<A-p>', "+p<movement>")
