local g = vim.g

g.vimairline = {
  colorscheme = 'wombat',
  active = {
    left = { { 'mode', 'paste' }, { 'gitbranch', 'readonly', 'filename', 'modified' } },
    right = { { 'lineinfo' }, { 'percent' }, { 'fileformat', 'fileencoding', 'filetype' } }
  },
  component_function = {
    gitbranch = 'fugitive#head',
    readonly = 'lightline#readonly',
    filename = 'lightline#filename',
    modified = 'lightline#modified'
  }
}

--g["vimairline"] = {
g["Airline"] = {
  colorscheme = 'wombat',
  active = {
    left = { { 'mode', 'paste' }, { 'gitbranch', 'readonly', 'filename', 'modified' } },
    right = { { 'lineinfo' }, { 'percent' }, { 'fileformat', 'fileencoding', 'filetype' } }
  },
  component_function = {
    gitbranch = 'fugitive#head',
    readonly = 'lightline#readonly',
    filename = 'lightline#filename',
    modified = 'lightline#modified'
  }
}
