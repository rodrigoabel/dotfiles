-----------------------------------------------------------
-- Neovim settings
-----------------------------------------------------------

-----------------------------------------------------------
-- Neovim API aliases
-----------------------------------------------------------
--local map = vim.api.nvim_set_keymap  -- set global keymap
local cmd = vim.cmd     				-- execute Vim commands
local exec = vim.api.nvim_exec				-- execute Vimscript
local fn = vim.fn       				-- call Vim functions
local g = vim.g         				-- global variables
local opt = vim.opt         		-- global/buffer/windows-scoped options

-----------------------------------------------------------
-- General
-----------------------------------------------------------
g.mapleader = ';'             -- change leader to a comma
opt.mouse = 'a'               -- enable mouse support
opt.clipboard = 'unnamedplus' -- copy/paste to system clipboard
opt.swapfile = false          -- don't use swapfile

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
opt.number = true             -- show line number
opt.relativenumber = true     -- show line number
opt.showmatch = true          -- highlight matching parenthesis
opt.foldmethod = 'marker'     -- enable folding (default 'foldmarker')
opt.colorcolumn = '80'        -- line lenght marker at 80 columns
opt.splitright = true         -- vertical split to the right
opt.splitbelow = true         -- orizontal split to the bottom
opt.ignorecase = true         -- ignore case letters when search
opt.smartcase = true          -- ignore lowercase for the whole pattern
opt.linebreak = true          -- wrap on word boundary
opt.conceallevel = 0
opt.termguicolors = true

opt.list = true
opt.listchars = 'tab:▸ ,space:·,nbsp:␣,trail:•,precedes:«,extends:»'

-- set spell
-- exec ([[
--   setlocal spell spelllang=es
--   set spell
--   ]], false)
exec ([[
    augroup markdownSpell
        autocmd!
        autocmd FileType markdown setlocal spell spelllang=es
        autocmd BufRead,BufNewFile *.md setlocal spell spelllang=es
    augroup END
  ]], false)

-- remove whitespace on save
cmd [[au BufWritePre * :%s/\s\+$//e]]

-- highlight on yank
exec([[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
  augroup end
]], false)

-- templates
exec([[
  augroup templates
      au!
      let g:template_name = 'Rodrigo Abel <a.k.a. unRabel>'
      autocmd BufNewFile *.* silent! execute '0r $HOME/.config/nvim/templates/'.expand("<afile>:e").'.tpl'
      autocmd BufNewFile * %s/{{YEAR}}/\=strftime('%Y')/ge
      autocmd BufNewFile * %s/{{NAME}}/\=template_name/ge
      autocmd BufNewFile * %s/{{EVAL\s*\([^}]*\)}}/\=eval(submatch(1))/ge
  augroup END
]], false)
