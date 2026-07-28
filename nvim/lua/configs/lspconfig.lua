require("nvchad.configs.lspconfig").defaults()

vim.lsp.config("ruff", {
  init_options = {
    settings = {
      -- Prefer pyproject.toml over editor-defined Ruff settings.
      configurationPreference = "filesystemFirst",
    },
  },
})

local servers = { "html", "cssls", "pyright", "ruff", "svelte" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
