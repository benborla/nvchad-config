require "nvchad.mappings"
require "configs.telescope-rc"

-- add yours here

-- local map = vim.keymap.set
local keymap = vim.keymap

keymap.set("n", ";", ":", { desc = "CMD enter command mode" })
keymap.set("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Do not yank with x
-- Remove character using "x" when in normal mode
keymap.set("n", "x", '"_x')

-- Increment/decrement
-- Increment/decrement a number
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
-- for mac press ^ + a to select all texts
keymap.set("n", "<C-a>", "gg<S-v>G")
keymap.set("n", "aa", "gg<S-v>G")

-- press nww to save changes
keymap.set("n", "<C-s>", "<ESC>:w!<CR>")
keymap.set("i", "<C-s>", "<ESC>:w!<CR>")
keymap.set("n", "nww", "<ESC>:w!<CR>")
-- press ww to save changes when in visual mode
keymap.set("v", "ww", "<ESC>:w!<CR>")
-- press ww to save changes when in insert mode
keymap.set("i", "ww", "<ESC>:w!<CR>")
-- press qq to close file
keymap.set("n", "qw", "<ESC>:q!<CR>")
keymap.set("n", "qe", "<ESC>:bw!<CR>")
keymap.set("n", "Q", "<ESC>:qa!<CR>")
-- press ii to go back to normal mode
keymap.set("i", "ii", "<ESC>")
keymap.set("i", "jj", "<ESC>")
keymap.set("v", "ii", "<ESC>")

keymap.set("n", "j", "gj")
keymap.set("n", "k", "gk")

-- press te to open a new tab
keymap.set("n", "te", ":tabedit<Return>", { silent = true })

-- SPLIT WINDOW
-- press sg to split current file horizontally
keymap.set("n", "sg", ":split<Return><C-w>w", { silent = true })
-- press sg to split current file vertically
keymap.set("n", "sv", ":vsplit<Return><C-w>w", { silent = true })

-- MOVE WINDOW

-- ctrl + w
-- keymap.set('n', '<Space>', '<C-w>')
-- space + <- to move window to the left
keymap.set("", "s<left>", "<C-w>h")

-- space + -> to move window to the right
keymap.set("", "s<right>", "<C-w>l")

-- space + arrow up to move window to the up
keymap.set("", "s<up>", "<C-w>k")

-- space + arrow down to move window to the down
keymap.set("", "s<down>", "<C-w>j")

keymap.set("", "sh", "<C-w>h")
keymap.set("", "sk", "<C-w>k")
keymap.set("", "sj", "<C-w>j")
keymap.set("", "sl", "<C-w>l")

-- RESIZE WINDOW
-- press arrow left to resize window from the left
keymap.set("n", "<left>", "<C-w><")
-- press arrow right to resize window from the right
keymap.set("n", "<right>", "<C-w>>")
-- press arrow up to resize window from the up
keymap.set("n", "<up>", "<C-w>+")
-- press arrow down to resize window from the down
keymap.set("n", "<down>", "<C-w>-")
-- @keymap <space> + ff go to definition
-- then press ctrl + o to go back to the selected text prior to going to the defnition
keymap.set("n", "<Space>ff", ":vsplit | lua vim.lsp.buf.definition()<Return>")

keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")
keymap.set("v", "yy", "vg_")

-- goto-preview plugin keymaps
keymap.set("n", "gpd", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>")
keymap.set("n", "gpt", "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>")
keymap.set("n", "gpi", "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>")
keymap.set("n", "gP", "<cmd>lua require('goto-preview').close_all_win()<CR>")
keymap.set("n", "gpr", "<cmd>lua require('goto-preview').goto_preview_references()<CR>")

-- Toggle LSP Definition Lists
keymap.set("n", "<Space>ww", ":Telescope lsp_document_symbols<CR>")
keymap.set("n", "<Space>wf", ":Telescope lsp_document_symbols default_text=:method:<CR>")
keymap.set("n", "<Space>wv", ":Telescope lsp_document_symbols default_text=:property:<CR>")
keymap.set("n", "<Space>wo", ":Telescope lsp_document_symbols default_text=:constant:<CR>")
keymap.set("n", "<Space>wc", ":Telescope lsp_document_symbols default_text=:class:<CR>")
keymap.set("n", "<Space>wi", ":Telescope lsp_document_symbols default_text=:interface:<CR>")
keymap.set("n", "<Space>p", "<CMD>Telescope projects<CR>")

-- Generate DocBlock (kkoomen/vim-doge#)
keymap.set("n", ";d", ":DogeGenerate<CR>")

-- press K to show function doc
keymap.set("n", "K", "<CMD>lua vim.lsp.buf.hover()<CR>")

-- Copilot
-- ctrl+l to accept suggestion
-- ctrl+[ to go back to previous suggestion
-- ctrl+] to go to next suggestion
keymap.set(
  "i",
  "<C-L>",
  'copilot#Accept("<CR>")',
  { noremap = true, silent = true, expr = true, replace_keycodes = false }
)
keymap.set("i", "<C-[>", "copilot#Previous()", { noremap = true, silent = true, expr = true, replace_keycodes = false })
keymap.set("i", "<C-]>", "copilot#Next()", { noremap = true, silent = true, expr = true, replace_keycodes = false })

-- Disable mouse scrolling in all modes
keymap.set("n", "<ScrollWheelUp>", "<nop>", { noremap = true, silent = true })
keymap.set("n", "<ScrollWheelDown>", "<nop>", { noremap = true, silent = true })
keymap.set("i", "<ScrollWheelUp>", "<nop>", { noremap = true, silent = true })
keymap.set("i", "<ScrollWheelDown>", "<nop>", { noremap = true, silent = true })
keymap.set("v", "<ScrollWheelUp>", "<nop>", { noremap = true, silent = true })
keymap.set("v", "<ScrollWheelDown>", "<nop>", { noremap = true, silent = true })

-- Hop --
keymap.set("", "<C-g>", "<cmd>HopWord<cr>", {})

-- Disable Highlight
keymap.set("n", "<Space>h", "<cmd>nohl<cr>", { noremap = true, silent = true, desc = "Disable highlight" })

-- Format Code
keymap.set('n', '<Space>lf', '<cmd>lua require("conform").format({ async = true, lsp_fallback = true })<CR>', { noremap = true, silent = true, desc = "Format code" })

keymap.set('n', ';', '')

-- Trouble plugin
keymap.set('n', ';g', '<cmd>TroubleToggle<cr>', { noremap = true, silent = true, desc = "Toggle Trouble" })

-- Lazygit plugin
keymap.set('n', '<Space>gg', '<cmd>LazyGit<cr>', { noremap = true, silent = true, desc = "Toggle LazyGit" })
