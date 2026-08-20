require("nvchad.configs.lspconfig").defaults()

vim.lsp.config("ruff", {
  init_options = {
    settings = {
      -- Prefer pyproject.toml over editor-defined Ruff settings.
      configurationPreference = "filesystemFirst",
    },
  },
})

vim.lsp.config("pyright", {
  before_init = function(_, config)
    local root = config.root_dir
    if not root then
      return
    end

    local python = root .. "/.venv/bin/python"

    if vim.fn.executable(python) == 1 then
      config.settings = config.settings or {}
      config.settings.python = config.settings.python or {}
      config.settings.python.pythonPath = python
    end
  end,
})

local servers = { "html", "cssls", "pyright", "ruff", "svelte" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
