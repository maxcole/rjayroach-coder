-- https://www.youtube.com/watch?v=S-xzYgTLVJE
return {
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup()
    end
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require('mason-lspconfig').setup({
        -- https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
        ensure_installed = { 'lua_ls', 'ruby_lsp', 'stimulus_ls', 'tailwindcss', 'ansiblels' } --, 'jinja_lsp' }
      })
      -- 'angularls', 'bashls', 'docker_compose_language_service', 'dockerls', 'elixirls', 'helm_ls', 'html', 'jinja_lsp'
      -- 'rome' or 'biome' ? https://biomejs.dev/blog/annoucing-biome/
      -- 'ruby_lsp', 'rubocop'
    end
  },
  {
    'neovim/nvim-lspconfig',
    dependencies = {'hrsh7th/cmp-nvim-lsp', 'hrsh7th/nvim-cmp'},
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({})
      lspconfig.ruby_lsp.setup({
        capabilities = capabilities
      })

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, {})
      vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})



    end
  }
--[[
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lsp_config = require('lspconfig')
      lsp_config.lua_ls.setup({})
      lsp_config.ansiblels.setup({})
      -- lsp_config.jinja_lsp.setup({})
      lsp_config.ruby_lsp.setup({})
      lsp_config.stimulus_ls.setup({})
      lsp_config.tailwindcss.setup({})
    end
  }
--]]
}
