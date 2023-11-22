require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "java","go"},
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
  },
}
