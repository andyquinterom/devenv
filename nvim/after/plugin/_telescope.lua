local nnoremap = require("keymap").nnoremap
local telescope = require("telescope.builtin")

nnoremap('<C-p>', telescope.find_files)
nnoremap('<C-o>', telescope.buffers)
nnoremap('<C-f>', telescope.live_grep)
