local nmap = require("keymap").nnoremap

nmap('<leader>gj', ":diffget //3<CR>")
nmap('<leader>gf', ":diffget //2<CR>")
nmap('<leader>gs', ":G<CR>")

