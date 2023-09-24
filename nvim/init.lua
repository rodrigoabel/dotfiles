
--[[
  ██╗███╗   ██╗██╗████████╗██╗     ██╗   ██╗ █████╗
  ██║████╗  ██║██║╚══██╔══╝██║     ██║   ██║██╔══██╗
  ██║██╔██╗ ██║██║   ██║   ██║     ██║   ██║███████║
  ██║██║╚██╗██║██║   ██║   ██║     ██║   ██║██╔══██║
  ██║██║ ╚████║██║   ██║██╗███████╗╚██████╔╝██║  ██║
  ╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝
Neovim init file
Version: 0.1.1 - 2023/09/22
Maintainer: unRabel
--]]

-----------------------------------------------------------
-- Import Lua modules
-----------------------------------------------------------
require('settings')                    -- settings
require('keymaps')                     -- keymaps
require('plugins/packer')              -- plugin manager

-- Plugins
require('plugins/ayu')                 -- Tema de colores
--require('plugins/onedark')
require('plugins/nvim-cmp')
require('plugins/feline')
require('plugins/neo-tree')
require('plugins/tabby')
