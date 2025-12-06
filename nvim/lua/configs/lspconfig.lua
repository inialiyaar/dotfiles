require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "pyright", "cssls" }
vim.lsp.enable(servers)

-- read:h vim.lsp.config for changoptions of lsp servers 
