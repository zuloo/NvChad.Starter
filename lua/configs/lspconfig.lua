-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "html",

  "cssls",
  -- "stylelint-lsp",
  -- "css-variables-language-server",
  -- "cssmodules-language-server",
  --
  -- "prettier",
  "biome",
  --
  -- "angular-language-server",
  -- "nextls",
  -- "svelte-language-server",
  -- "custom-elements-language-server", -- web components
  -- -- "tailwindcss-language-server",
  -- "rustywind", -- tailwind in rust
  -- "unocss-language-server",
  --
  -- "blue", -- like black but softer
  -- "debugpy",
  -- "djlint", -- Jinja, Django, Handlebars, golang templates
  -- "docformatter", -- docstring pep 257
  -- "pyment", -- docstring generator
  -- "pyre", -- pep 484 complient
  --
  -- "jq-lsp",
  -- "json-lsp",
  -- -- "spectral-language-server", -- json/yaml \w OpenAPI support
  -- "vacuum",
  -- "taplo", -- toml lsp
  --
  -- "remark-language-server",
  -- "markdown-oxide",
  -- "ltex-ls",
  --
  -- "typst-lsp",
  -- "typstfmt",
  --
  -- "nil",
  -- "nixpkgs-fmt",
  --
  -- "ansible-language-server",
  -- "ansible-lint",
  --
  -- "terraform-ls",
  -- "tflint",
  -- "tfsec", -- security scanner
  --
  -- "nginx-language-server",
  -- "systemdlint",
  --
  -- "gitleaks", -- check for secrets in git
  --
  -- "reformat-gherkin",
  --
  -- "snyk-ls",
  -- "sonarlint-language-server",
  -- "trivy",
  -- "trufflehog",
  --
  -- "openscad-lsp",
  --
  -- "yls-yara",
  --
  -- "woke",
  -- "write-good",
  -- "typos",
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
lspconfig.tsserver.setup {
  on_attach = function(client)
    -- this is important, otherwise tsserver will format ts/js
    -- files which we *really* don't want.
    client.server_capabilities.documentFormattingProvider = false
  end,
  on_init = on_init,
  capabilities = capabilities,
}
