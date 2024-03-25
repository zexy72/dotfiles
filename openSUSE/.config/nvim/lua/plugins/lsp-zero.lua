return {
    {'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
          -- LSP Support
          { "neovim/nvim-lspconfig" },
          { "williamboman/mason.nvim" },
          { "williamboman/mason-lspconfig.nvim" },
          { "jay-babu/mason-nvim-dap.nvim" },
          { "nvim-neotest/nvim-nio" },

          -- null-ls
          { "nvimtools/none-ls.nvim" },
          { "jay-babu/mason-null-ls.nvim" },

          -- Autocompletion
          { "hrsh7th/nvim-cmp" },
          { "hrsh7th/cmp-buffer" },
          { "hrsh7th/cmp-path" },
          { "saadparwaiz1/cmp_luasnip" },
          { "hrsh7th/cmp-nvim-lsp" },
          { "hrsh7th/cmp-nvim-lua" },

          -- Snippets
          { "L3MON4D3/LuaSnip", version = "2.*" },
          { "rafamadriz/friendly-snippets" }, 
          { "honza/vim-snippets" },
        },
        config = function()
            local lsp_zero = require('lsp-zero')
            

            -- LSP-ZERO PARTS --

            -- enable these keybindings only when 
            -- you have a language server active in the current file 
            lsp_zero.on_attach(function(client, bufnr)
              -- see :help lsp-zero-keybindings
              -- to learn the available actions
            lsp_zero.default_keymaps({buffer = bufnr})
            end)
            -- here you can setup the language servers 
            
            ---------------------------------------------
            
            -- MASON PART --
            require('mason').setup({
              ensure_installed = {'ruff', 'mypy'},
                })
            require('mason-lspconfig').setup({
              ensure_installed = {'pyright', 'rust_analyzer'},
              handlers = {
                lsp_zero.default_setup,
              },
            })

        end,
  }
}
