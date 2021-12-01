lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "python",
    "toml",
    "json",
    "yaml",
    "javascript",
    "html",
    "css",
  },
  incremental_selection = {
    enable = false,
  },
  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = false,
    disable = {},
  },
}
EOF
