local plugins = {
  "neovim/nvim-lspconfig",
   config = function()
      require "configs.lspconfig"
   end,
}
return plugins
