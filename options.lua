require "nvchad.options"

-- add yours here!

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!

vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.cmd "set noshowcmd"
vim.cmd "set noshowmode"

vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.hlsearch = true

vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.showmatch = true

vim.opt.scrolloff = 10
vim.opt.shell = "/bin/zsh"
vim.opt.backupskip = "/tmp/*,/private/tmp/*"

vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.ai = true -- Auto indent
vim.opt.si = true -- Smart indent
vim.opt.wrap = true -- no wrap lines
vim.opt.backspace = "start,eol,indent"
vim.opt.path:append { "**" } -- Finding files - Search down into subfolders
vim.opt.wildignore:append { "*/node_modules/*" }

-- Undercurl
vim.cmd [[let &t_Cs = "\e[4:3m"]]
vim.cmd [[let &t_Ce = "\e[4:0m"]]
vim.cmd "autocmd VimEnter * highlight DiagnosticUnderlineError gui=undercurl cterm=undercurl"

-- Turn off paste mode when leaving insert mode
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- Add asterisk in block comments
vim.opt.formatoptions:append { "r" }

vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = "pum"
vim.opt.background = "dark"
vim.opt.colorcolumn = "80,120"
-- @INFO: Pop-up menu transparency, 0 for opaque
vim.opt.pumblend = 2

vim.opt.clipboard:append { "unnamed" }

-- Delay execution 2 seconds
vim.defer_fn(function()
  vim.cmd "highlight LineNr guifg=#ffffff guibg=none"
  vim.cmd "highlight CursorLineNr guifg=#daff24 guibg=#9d0006"
  vim.cmd "highlight CursorLine term=bold cterm=bold guibg=#1b047c"
  vim.cmd "highlight ColorColumn ctermbg=lightgrey guibg=#9d0006"
  vim.cmd "highlight ColorColumn ctermbg=red guibg=#af3a03"
  -- vim.cmd('highlight Comment guifg=#98971a')
  -- vim.cmd('highlight Variable guifg=#ECBE7B')
  vim.cmd "highlight Visual guifg=black guibg=#d79921"
  -- SET BACKGROUND TO TRANSPARENT
  vim.cmd "highlight Normal guibg=NONE ctermbg=NONE"
  vim.cmd "highlight EndOfBuffer guibg=NONE ctermbg=NONE"
end, 150)

-- Copilot
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true

-- vim.g.copilot_filetype = { xml = false }
vim.g.copilot_filetypes = {
  ["*"] = false,
  ["javascript"] = true,
  ["vue"] = true,
  ["dart"] = true,
  ["typescript"] = true,
  ["php"] = true,
  ["lua"] = true,
  ["rust"] = true,
  ["c"] = false,
  ["c#"] = false,
  ["c++"] = false,
  ["go"] = false,
  ["python"] = false,
}
