return {
  {
    'nvim-telescope/telescope.nvim',
    config = function()
      require('telescope').setup({
        defaults = {
          path_display = { "truncate" },
        },
      })
      local builtin = require('telescope.builtin')

      vim.keymap.set('n', '<leader>pf', builtin.git_files, {
        desc = "find file in project",
      })
      vim.keymap.set('n', '<leader>ps', builtin.live_grep, {
        desc = "search in project",
      })
      vim.keymap.set({'n', 'v'}, '<leader>*', builtin.grep_string, {
        desc = "search word under cursor",
      })
      vim.keymap.set("n", "grr", builtin.lsp_references)
      vim.keymap.set("n", "<leader>pd", builtin.diagnostics, {
        desc = "list diagnostics for all open buffers",
      })
      vim.keymap.set("n", "<leader>hh", builtin.help_tags, {
        desc = "search help",
      })
    end
  },

  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    config = function()
      local harpoon = require("harpoon")
      harpoon.setup()

      vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
      vim.keymap.set("n", "<leader>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

      vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
      vim.keymap.set("n", "<C-l>", function() harpoon:list():select(2) end)
      vim.keymap.set("n", "<C-p>", function() harpoon:list():select(3) end)
      vim.keymap.set("n", "<C-n>", function() harpoon:list():select(4) end)
    end
  },

  { "nvim-lua/plenary.nvim", lazy = true },

  {
    'projekt0n/github-nvim-theme',
    config = function()
      vim.cmd.colorscheme('github_dark_default')
    end
  },

  {
    'mbbill/undotree',
    config = function()
      vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
    end
  },

  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require("nvim-treesitter.configs").setup({
        auto_install = true,
        highlight = { enable = true }
      })
    end
  },

  { 'nvim-tree/nvim-web-devicons', lazy = true },

  {
    'Saghen/blink.cmp',
    version = '1.*',
    opts = {
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },
    },
  },

  { 'NMAC427/guess-indent.nvim', opts = {} },

  { 'neovim/nvim-lspconfig' },

  {
    'lewis6991/gitsigns.nvim',
    opts = {
      on_attach = function(bufnr)
        local gitsigns = require('gitsigns')
        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        map('n', ']c', function()
          if vim.wo.diff then
            vim.cmd.normal({']c', bang = true})
          else
            gitsigns.nav_hunk('next')
          end
        end)

        map('n', '[c', function()
          if vim.wo.diff then
            vim.cmd.normal({'[c', bang = true})
          else
            gitsigns.nav_hunk('prev')
          end
        end)
        map('n', '<leader>hS', gitsigns.stage_buffer)
        map('n', '<leader>hs', gitsigns.stage_hunk)
        map('v', '<leader>hs', function()
          gitsigns.stage_hunk({ vim.fn.line('.'), vim.fn.line('v') })
        end)
        map('n', '<leader>hR', gitsigns.reset_buffer_index)
        map('n', '<leader>hp', gitsigns.preview_hunk)
        map('n', '<leader>hr', gitsigns.reset_hunk)
        map('v', '<leader>hr', function()
          gitsigns.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
        end)
      end
    }
  },

  {
    'sindrets/diffview.nvim',
    config = function()
      vim.keymap.set('n', '<leader>g', vim.cmd.DiffviewOpen)
    end
  },

  {
    dir = '~/code/gitstatus.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons', -- optional dependency to display filetype icons
      -- 'nvim-mini/mini.icons' -- you can use mini.icons instead if you prefer
      'rcarriga/nvim-notify',
    },
    config = function()
      vim.keymap.set('n', '<leader>s', vim.cmd.Gitstatus)
    end
  },

  {
    'nvim-flutter/flutter-tools.nvim',
    lazy = false,
    opts = {},
  }
}
