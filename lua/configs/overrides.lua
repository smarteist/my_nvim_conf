local M = {}

M.general = {
  n = {
    ['<C-h>'] = { '<cmd> TmuxNavigateLeft<CR>', 'window left' },
    ['<C-l>'] = { '<cmd> TmuxNavigateRight<CR>', 'window right' },
    ['<C-j>'] = { '<cmd> TmuxNavigateDown<CR>', 'window down' },
    ['<C-k>'] = { '<cmd> TmuxNavigateUp<CR>', 'window up' },
  },
}

M.treesitter = {
  ensure_installed = {
    'bash',
    'c',
    'css',
    'go',
    'gomod',
    'gosum',
    'html',
    'java',
    'javascript',
    'json',
    'jsonc',
    'lua',
    'markdown_inline',
    'markdown',
    'php',
    'python',
    'rust',
    'typescript',
    'vim',
    'vimdoc',
    'yaml',
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua
    'lua-language-server',
    'stylua',
    -- web
    'css-lsp',
    'html-lsp',
    'typescript-language-server',
    'deno',
    'prettier',
    'prettierd',
    'emmet-ls',
    -- java
    'jdtls',
    'java-test',
    'google-java-format',
    -- c/cpp stuff
    'clangd',
    'clang-format',
    -- rust
    'rustywind',
    -- azure
    -- "azure-pipelines-language-server",
    -- bash
    'shellcheck',
     -- you can turn off/on auto_update per tool
    { 'bash-language-server', auto_update = true },
    'shfmt',
    -- php
    'phpactor',
    'php-debug-adapter',
    'php-cs-fixer',
    -- python
    'pyright',
    'flake8',
    'black',
    'debugpy',
    'mypy',
    'pydocstyle',
    'pylint',
    'pyre',
    'autoflake',
    'autopep8',
    'python-lsp-server',
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },
  filters = {
    dotfiles = false,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.copilot = {
  -- Possible configurable fields can be found on:
  -- https://github.com/zbirenbaum/copilot.lua#setup-and-configuration
  suggestion = {
    enable = false,
  },
  panel = {
    enable = false,
  },
  filetypes = {
    markdown = true,
    go = true,
    javascript = true,
    typescript = true,
    yaml = true,
  },
}

M.nvimcmp = {
  sources = {
    { name = 'nvim_lsp', group_index = 2 },
    { name = 'copilot', group_index = 2 },
    { name = 'luasnip', group_index = 2 },
    { name = 'buffer', group_index = 2 },
    { name = 'nvim_lua', group_index = 2 },
    { name = 'path', group_index = 2 },
  },
}

return M
