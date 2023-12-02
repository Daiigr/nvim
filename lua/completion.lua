local cmp = require('cmp')
local lsp = require('cmp_nvim_lsp')
local vsnip = require('cmp_vsnip')
cmp.setup({
    sources = {
        { name = "copilot"},
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'nvim_lua' },
        { name = 'path' },
        { name = 'vsnip' },
    },
    mapping = {
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        }),
    },
    snippet = {
        expand = function(args)
            vsnip.lsp_expand(args.body)
        end,
    },
    completion = {
        completeopt = 'menu,menuone,noselect',
    }, window = {
	completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
})

lsp.setup({
    capabilities = lsp.default_capabilities
})

-- Setup language servers with default config
local lspconfig = require('lspconfig')
-- c language server
lspconfig.clangd.setup{}
-- go language server
lspconfig.gopls.setup{}
-- python language server
lspconfig.pyright.setup{}
-- lua language server
lspconfig.lua_ls.setup{}
