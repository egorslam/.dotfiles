  -- General
  vim.opt.number = true
  vim.opt.relativenumber = true
  vim.opt.termguicolors = true

  -- Tab
  vim.opt.tabstop = 2
  vim.opt.shiftwidth = 2
  vim.opt.expandtab = true

  -- Disable swap file
  vim.opt.backup = false
  vim.opt.writebackup = false
  vim.opt.swapfile = false

  -- Search
  vim.opt.ignorecase = true
  vim.opt.incsearch = true
  vim.opt.hlsearch = true

  -- Trim whitespaces on save
  vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = { "*" },
    command = [[%s/\s\+$//e]],
  })
