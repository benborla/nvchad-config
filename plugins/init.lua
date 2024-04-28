return {
  {
    "nvim-telescope/telescope-file-browser.nvim",
    config = function()
      require("telescope").load_extension "file_browser"
    end,
  },
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "phaazon/hop.nvim",
    lazy = false,
    config = function()
      require("hop").setup {}
    end,
  },
  {
    "rmagatti/goto-preview",
    lazy = false,
    config = function()
      require("goto-preview").setup {
        width = 120, -- Width of the floating window
        height = 25, -- Height of the floating window
        default_mappings = false, -- Bind default mappings
        debug = false, -- Print debug information
        opacity = nil, -- 0-100 opacity level of the floating window where 100 is fully transparent.
        post_open_hook = nil, -- A function taking two arguments, a buffer and a window to be ran as a hook.
        -- You can use "default_mappings = true" setup option
        -- Or explicitly set keybindings
        -- vim.cmd("nnoremap gpd <cmd>lua require('goto-preview').goto_preview_definition()<CR>")
        -- vim.cmd("nnoremap gpi <cmd>lua require('goto-preview').goto_preview_implementation()<CR>")
        -- vim.cmd("nnoremap gP <cmd>lua require('goto-preview').close_all_win()<CR>")
      }
    end,
  },
  {
    "nacro90/numb.nvim",
    event = "BufRead",
    config = function()
      require("numb").setup {
        show_numbers = true, -- Enable 'number' for the window while peeking
        show_cursorline = true, -- Enable 'cursorline' for the window while peeking
      }
    end,
  },
  {
    "andymass/vim-matchup",
    event = "CursorMoved",
    config = function()
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end,
  },
  {
    "jwalton512/vim-blade",
  },
  {
    "HiPhish/nvim-ts-rainbow2",
  },
  {
    "folke/neodev.nvim",
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup {}
    end,
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    opts = {},
    config = function(_, opts)
      require("lsp_signature").setup(opts)
    end,
  },
  {
    "HiPhish/rainbow-delimiters.nvim",
  },
  {
    "brenoprata10/nvim-highlight-colors",
  },
  {
    "kkoomen/vim-doge",
  },
  {
    "github/copilot.vim",
    lazy = false,
  },
  {
    "nelsyeung/twig.vim",
  },
  {
    "MaximilianLloyd/tw-values.nvim",
    keys = {
      { "<leader>sv", "<cmd>TWValues<cr>", desc = "Show tailwind CSS values" },
    },
    opts = {
      border = "rounded", -- Valid window border style,
      show_unknown_classes = true, -- Shows the unknown classes popup
      focus_preview = true, -- Sets the preview as the current window
      copy_register = "", -- The register to copy values to,
      keymaps = {
        copy = "<C-y>", -- Normal mode keymap to copy the CSS values between {}
      },
    },
  },
  {
    "hedyhli/outline.nvim",
    lazy = true,
    cmd = { "Outline", "OutlineOpen" },
    keys = { -- Example mapping to toggle outline
      { "<leader>o", "<cmd>Outline<CR>", desc = "Toggle Outline" },
    },
    opts = {
      -- Your setup opts here
    },
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
        "prettier",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "php",
        "vue",
        "json",
        "javascript",
        "typescript",
        "tsx",
      },
    },
  },

  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require("dashboard").setup {
        -- config
      }
    end,
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
  },
  {
    "kdheepak/lazygit.nvim",
    lazy = false,
    config = function()
      require("lazy").setup {
        {
          "kdheepak/lazygit.nvim",
          cmd = {
            "LazyGit",
            "LazyGitConfig",
            "LazyGitCurrentFile",
            "LazyGitFilter",
            "LazyGitFilterCurrentFile",
          },
          -- optional for floating window border decoration
          dependencies = {
            "nvim-lua/plenary.nvim",
          },
        },
      }
    end,
  },
  {
    "RRethy/vim-illuminate",
  },
  {
    "norcalli/nvim-colorizer.lua",
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = true,
  }
}
