-- Install plugins
local customPlugins = require "core.customPlugins"

customPlugins.add(function(use)
   use {
      "williamboman/nvim-lsp-installer",
   }
   use {
      "jose-elias-alvarez/null-ls.nvim",
      after = "nvim-lspconfig",
      config = function()
         require("custom.plugins.null-ls").setup()
      end,
   }
end)
