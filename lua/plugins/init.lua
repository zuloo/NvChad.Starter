return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
   	"nvim-treesitter/nvim-treesitter",
   	opts = function()
      require "configs.treesitter"
    end,
  },
 -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server",
        "stylua",

  			"html-lsp",
        "css-lsp",
        "stylelint", -- linter for sass css etc
        "stylelint-lsp",
        "css-variables-language-server",
        "cssmodules-language-server",
        "prettier",
        -- "eslint-lsp",
        -- "firefox-debug-adapter",
        "biome",
        -- "custom-elements-language-server", -- web components
        "typescript-language-server",

        "angular-language-server",
        "nextls",
        "svelte-language-server",
        -- "tailwindcss-language-server",
        "rustywind", -- tailwind
        "unocss-language-server",
        "vetur-vls", -- vue lsp
        -- "vue-language-server", -- better vue?

        "ansible-language-server",
        "ansible-lint",

        "terraform-ls", -- terraform
        "tflint",

        "docker-compose-language-service",
        "dockerfile-language-server",

        "tfsec", -- security scanner

        "systemdlint",

        -- "bibtex-tidy",

        -- "bash-debug-adapter",
        -- "bash-language-server",

        -- "autopep8", -- pep8
        -- "basedpyright", -- python static type checker \w Pylance support
        -- "pyright",
        -- "black", -- opinionated python format
        --
        "blue", -- like black but softer
        "debugpy",
        -- "curlylint", -- Jinja & Django templates
        "djlint", -- Jinja, Django, Handlebars, golang templates
        "docformatter", -- docstring pep 257
        "pyment", -- docstring generator
        "pyre", -- pep 484 complient
        -- "ruff", -- written in rust
        -- "ruff-lsp", -- written in rust
        "vulture", -- finds unused python code

        -- "clangd",

        -- "clj-kondo",
        -- "cljfmt",
        -- "clojure-lsp",
        -- "zprint-clj",

        -- "npm-groovy-`lint"

        -- "vala-language-server"

        -- "cmake-lanuguage-server",
        -- "cmakelint",
        -- "cmakelang",
        -- "codeql", -- java semantic code analysis (free for open source only)

        -- "detekt", -- static code analysis for kotlin
        -- "kotlin-debug-adapter",

        -- "kotlin-language-server",
        -- "ktlint",

        "elixir-ls",

        "templ", -- go templating

        -- "doctec", -- markdown file inddex generation
        -- "markdown-toc", -- markdonw table of contents
        "markdown-oxide", -- markdown lsp for obsidian
        -- "markmap-cli", -- mindmap (img) from markdown refs
        "remark-language-server", -- reformat markdown
        "ltex-ls", -- latex, markdown, ... lsp
        -- "tectonic", -- better latex engine (Compiler)
        "texlab", -- lsp
        "typst-lsp", -- typst 
        "typstfmt",

        -- "editorconfig-checker", -- checks file to be conform with editorconfig

        -- "gdtoolkit", -- Godot script

        -- "gh", -- github integration
        "gitleaks", -- check for secrets in git

        -- "jq", -- json query tool
        "yq", -- yaml, json, toml, xml -- jq alike
        "jq-lsp",
        "json-lsp",
        -- "spectral-language-server", -- json/yaml \w OpenAPI support
        "vacuum", -- OpenAPI in go (blazingly fast), spectral compatible
        "taplo", -- toml lsp
        "yaml-language-server", -- yaml by redhat
        "yamlfmt", -- yaml fmt by google

        "llm-ls", -- https://github.com/huggingface/llm-ls

        -- "matlab-language-server",

        -- "nginx-language-server",
        -- "nil",
        -- "nixpkgs-fmt",
        -- "rnix-lsp",

        "openscad-lsp",

        "reformat-gherkin",

        -- "rust_hdl", -- VHDL lsp

        -- "rus-analyzer",
        -- "rustfmt",

        "snyk", -- check deps for vulnerabilities
        "snyk-ls", -- lsp cor snyk
        "sonarlint-language-server", -- sonarqqube or sonar cli lsp
        "trivy",
        "trufflehog",

        -- "tree-stitter-cli", -- cli to test treesitter grammers

        "woke", -- because you are no mysagonix
        "write-good", -- better english prose
        "typos", -- rust ftw

        "yls-yara",
  		},
  	},
  },
}
