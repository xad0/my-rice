return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,

    opts = {
      flavour = "mocha",

      -- Keep Catppuccin's normal Mocha palette.
      -- Do NOT override the actual colors.
      integrations = {
        aerial = true,
        alpha = true,
        blink_cmp = true,
        cmp = true,
        dashboard = true,
        flash = true,
        fzf = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = {
          enabled = true,
        },
        lazygit = true,
        mason = true,
        mini = true,
        navic = {
          enabled = true,
          custom_bg = "lualine",
        },
        neotree = true,
        noice = true,
        notify = true,
        snacks = true,
        telescope = true,
        treesitter_context = true,
        which_key = true,
      },

      -- Green is the ACCENT.
      -- Syntax keeps the normal Mocha colors.
      custom_highlights = function(colors)
        return {
          -- Main UI
          CursorLineNr = {
            fg = colors.green,
            bold = true,
          },

          LineNr = {
            fg = colors.overlay1,
          },

          WinSeparator = {
            fg = colors.green,
          },

          FloatBorder = {
            fg = colors.green,
          },

          -- Active tab
          TabLineSel = {
            fg = colors.green,
            bold = true,
          },

          -- Search
          Search = {
            fg = colors.base,
            bg = colors.green,
          },

          IncSearch = {
            fg = colors.base,
            bg = colors.green,
          },

          -- Completion selection
          PmenuSel = {
            fg = colors.text,
            bg = colors.surface1,
          },
        }
      end,
    },
  },

  -- Tell LazyVim to actually use Catppuccin.
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
