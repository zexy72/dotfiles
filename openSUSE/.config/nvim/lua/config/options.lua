local options = {
  autoindent = true,
  smartindent = true,
  tabstop = 2,
  shiftwidth = 4,
  expandtab = true,
  showtabline = 1,
  showmatch = true,

  number = true,
  relativenumber = true,
  numberwidth = 4,
  incsearch = true,
  hlsearch = false,
  ignorecase = true,
  smartcase = true,

  splitbelow = true,
  splitright = true,

  termguicolors = true,
  hidden = true,
  signcolumn = "yes",
  showmode = false,
  errorbells = false,
  wrap = false,
  cursorline = true,
  fileencoding = "utf-8",

  backup = false,
  writebackup = false,
  swapfile = false,
  undodir = os.getenv("HOME") .. "/.vim/undodir",
  undofile = true,

  colorcolumn = "100",
  updatetime = 20,
  scrolloff = 15,
  mouse = "",
  guicursor = "a:block",

  title = true,
  -- titlestring = "%t - Wvim",
  titlestring = "Neovim - %t",
  guifont = "MesloLGS NF:h18",
  -- clipboard = "unnamedplus",
}

-- vim.opt.nrformats:append("alpha") -- increment letters
vim.opt.shortmess:append("IsF")

-- vim.o.shortmess = "filnxstToOFS"

for option, value in pairs(options) do
  vim.opt[option] = value
end
