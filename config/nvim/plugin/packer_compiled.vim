" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/loric/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/loric/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/loric/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/loric/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/loric/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  colorizer = {
    loaded = true,
    path = "/home/loric/.local/share/nvim/site/pack/packer/start/colorizer"
  },
  ["compe-tabnine"] = {
    loaded = true,
    path = "/home/loric/.local/share/nvim/site/pack/packer/start/compe-tabnine"
  },
  ["completion-treesitter"] = {
    loaded = true,
    path = "/home/loric/.local/share/nvim/site/pack/packer/start/completion-treesitter"
  },
  ["disco.vim"] = {
    loaded = true,
    path = "/home/loric/.local/share/nvim/site/pack/packer/start/disco.vim"
  },
  ["echodoc.vim"] = {
    config = { "\27LJ\1\2;\0\0\2\0\3\0\0054\0\0\0007\0\1\0'\1ÿÿ:\1\2\0G\0\1\0\30echodoc#enable_at_startup\6g\bvim\0" },
    loaded = true,
    path = "/home/loric/.local/share/nvim/site/pack/packer/start/echodoc.vim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\1\2;\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\vindent\17plugins.misc\frequire\0" },
    loaded = true,
    path = "/home/loric/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  ["nvim-compe"] = {
    config = { "\27LJ\1\2@\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\ncompe\23plugins.completion\frequire\0" },
    loaded = true,
    path = "/home/loric/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-jdtls"] = {
    config = { "\27LJ\1\0029\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\njdtls\16plugins.lsp\frequire\0" },
    loaded = true,
    path = "/home/loric/.local/share/nvim/site/pack/packer/start/nvim-jdtls"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\1\0027\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\blsp\16plugins.lsp\frequire\0" },
    loaded = true,
    path = "/home/loric/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\1\0026\0\0\2\0\2\0\0054\0\0\0%\1\1\0>\0\2\2>\0\1\1G\0\1\0\23plugins.treesitter\frequire\0" },
    loaded = true,
    path = "/home/loric/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  oneterm = {
    config = { "\27LJ\1\2<\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\foneterm\17plugins.misc\frequire\0" },
    loaded = true,
    path = "/home/loric/.local/share/nvim/site/pack/packer/start/oneterm"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/loric/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["pear-tree"] = {
    config = { "\27LJ\1\2=\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\rpearTree\17plugins.misc\frequire\0" },
    loaded = true,
    path = "/home/loric/.local/share/nvim/site/pack/packer/start/pear-tree"
  },
  ultisnips = {
    config = { "\27LJ\1\2>\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\14ultisnips\17plugins.misc\frequire\0" },
    loaded = true,
    path = "/home/loric/.local/share/nvim/site/pack/packer/start/ultisnips"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/loric/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/loric/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-doge"] = {
    config = { "\27LJ\1\0028\0\0\2\0\4\0\0054\0\0\0007\0\1\0%\1\3\0:\1\2\0G\0\1\0\14<Leader>g\17doge_mapping\6g\bvim\0" },
    loaded = true,
    path = "/home/loric/.local/share/nvim/site/pack/packer/start/vim-doge"
  },
  ["vim-obsession"] = {
    loaded = true,
    path = "/home/loric/.local/share/nvim/site/pack/packer/start/vim-obsession"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/loric/.local/share/nvim/site/pack/packer/start/vim-snippets"
  },
  ["vim-vsnip"] = {
    config = { "\27LJ\1\2:\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nvsnip\17plugins.misc\frequire\0" },
    loaded = true,
    path = "/home/loric/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/loric/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ"
  }
}

-- Config for: nvim-jdtls
try_loadstring("\27LJ\1\0029\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\njdtls\16plugins.lsp\frequire\0", "config", "nvim-jdtls")
-- Config for: nvim-treesitter
try_loadstring("\27LJ\1\0026\0\0\2\0\2\0\0054\0\0\0%\1\1\0>\0\2\2>\0\1\1G\0\1\0\23plugins.treesitter\frequire\0", "config", "nvim-treesitter")
-- Config for: pear-tree
try_loadstring("\27LJ\1\2=\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\rpearTree\17plugins.misc\frequire\0", "config", "pear-tree")
-- Config for: vim-vsnip
try_loadstring("\27LJ\1\2:\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nvsnip\17plugins.misc\frequire\0", "config", "vim-vsnip")
-- Config for: oneterm
try_loadstring("\27LJ\1\2<\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\foneterm\17plugins.misc\frequire\0", "config", "oneterm")
-- Config for: indent-blankline.nvim
try_loadstring("\27LJ\1\2;\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\vindent\17plugins.misc\frequire\0", "config", "indent-blankline.nvim")
-- Config for: nvim-compe
try_loadstring("\27LJ\1\2@\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\ncompe\23plugins.completion\frequire\0", "config", "nvim-compe")
-- Config for: echodoc.vim
try_loadstring("\27LJ\1\2;\0\0\2\0\3\0\0054\0\0\0007\0\1\0'\1ÿÿ:\1\2\0G\0\1\0\30echodoc#enable_at_startup\6g\bvim\0", "config", "echodoc.vim")
-- Config for: nvim-lspconfig
try_loadstring("\27LJ\1\0027\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\blsp\16plugins.lsp\frequire\0", "config", "nvim-lspconfig")
-- Config for: ultisnips
try_loadstring("\27LJ\1\2>\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\14ultisnips\17plugins.misc\frequire\0", "config", "ultisnips")
-- Config for: vim-doge
try_loadstring("\27LJ\1\0028\0\0\2\0\4\0\0054\0\0\0007\0\1\0%\1\3\0:\1\2\0G\0\1\0\14<Leader>g\17doge_mapping\6g\bvim\0", "config", "vim-doge")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
