return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    -- "nvim-telescope/telescope.nvim", -- optional
    -- "sindrets/diffview.nvim",        -- optional - Diff integration
    -- Only one of these is needed.
    "ibhagwan/fzf-lua",              -- optional
    -- "echasnovski/mini.pick",         -- optional
  },
  config = function()
    local neogit = require("neogit")
    neogit.setup({
      disable_commit_confirmation = true,
      disable_insert_on_commit = false,
      integrations = {
      -- telescope = true,
      -- diffview = true,
      fzf = true,
      -- mini = true,
      },
      -- signs = {
      --   section = { "", "" },
      --   item = { "", "" },
      --   hunk = { "", "" },
      -- },
      commit_editor = {
        kind = "tab",
        show_staged_diff = true,
        -- Accepted values:
        -- "split" to show the staged diff below the commit editor
        -- "vsplit" to show it to the right
        -- "split_above" Like :top split
        -- "vsplit_left" like :vsplit, but open to the left
        -- "auto" "vsplit" if window would have 80 cols, otherwise "split"
        staged_diff_split_kind = "split",
        spell_check = true,
      },
    })
  end,
}
