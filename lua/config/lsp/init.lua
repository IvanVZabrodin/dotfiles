local mason = require('mason')
local mason_lsp = require('mason-lspconfig')
local lspconfig = require('lspconfig')

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local treesitterconfig = require('nvim-treesitter.configs')

require('config.lsp.cmp')

treesitterconfig.setup {
    ensure_installed = { "c", "cpp", "html", "javascript", "css", "python", "cmake", "lua", },
}

local servers = { "clangd", "cmake", "cssls", "html", "biome", "marksman", "pylsp", "lua_ls", }

mason.setup()
mason_lsp.setup {
    ensure_installed = servers,
}


for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        capabilities = capabilities,
    }
end

