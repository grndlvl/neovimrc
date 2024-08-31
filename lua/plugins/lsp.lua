return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp",
    "j-hui/fidget.nvim",
    "L3MON4D3/LuaSnip",
    "onsails/lspkind.nvim",
    "saadparwaiz1/cmp_luasnip",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local cmp = require("cmp")
    local cmp_lsp = require("cmp_nvim_lsp")
    local capabilities =
      vim.tbl_deep_extend("force", {}, vim.lsp.protocol.make_client_capabilities(), cmp_lsp.default_capabilities())
    local lspkind = require("lspkind")

    require("fidget").setup()
    require("mason").setup()

    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "phpactor",
      },
      handlers = {
        function(server_name) -- default handler (optional)
          require("lspconfig")[server_name].setup({
            capabilities = capabilities,
          })
        end,
        ["lua_ls"] = function()
          local lspconfig = require("lspconfig")
          lspconfig.lua_ls.setup({
            capabilities = capabilities,
            settings = {
              Lua = {
                diagnostics = {
                  globals = {
                    "vim",
                    "it",
                    "describe",
                    "before_each",
                    "after_each",
                  },
                },
              },
            },
          })
        end,
        ["phpactor"] = function()
          local homedirectory = os.getenv("HOME")
          require("lspconfig").phpactor.setup({
            capabilities = capabilities,
            init_options = {
              ["indexer.stub_paths"] = {
                homedirectory .. "/.local/share/nvim/phpstorm-stubs/",
              },
              ["indexer.supported_extensions"] = {
                "php",
                "inc",
                "module",
              },
              ["indexer.include_patterns"] = {
                "/**/*.php",
                "/**/*.inc",
              },
            },
          })
        end,
      },
    })

    local cmp_select = {
      behavior = cmp.SelectBehavior.Select,
    }
    cmp.setup({
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
        ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
        ["<C-y>"] = cmp.mapping.confirm({
          select = true,
        }),
        ["<C-Space>"] = cmp.mapping.complete(),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" }, -- For luasnip users.
      }, {
        { name = "buffer" },
      }),
      formatting = {
        format = lspkind.cmp_format(),
      },
    })
  end,
}
