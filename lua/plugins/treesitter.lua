return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    -- Enable default smartindent since we're not using treesitters indenting.
    vim.opt.smartindent = true

    require("nvim-treesitter.configs").setup({
      -- A list of parser names, or "all"
      ensure_installed = {
        "bash",
        "css",
        "csv",
        "dockerfile",
        "diff",
        "gitcommit",
        "git_config",
        "git_rebase",
        "html",
        "javascript",
        "json",
        "latex",
        "lua",
        "markdown",
        "php",
        "phpdoc",
        "sql",
        "typescript",
        "vimdoc",
        "yaml",
        "xml",
      },
      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,

      -- Automatically install missing parsers when entering buffer
      -- Recommendation: set to false if you don"t have `tree-sitter` CLI installed locally
      auto_install = true,

      indent = {
        -- Use default smartindent as this is really buggy... especially with
        -- PHP heredoc.
        enable = false,
      },

      highlight = {
        enable = true,
        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = true,
      },
    })
  end,
}
