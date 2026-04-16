return {
    "gbprod/yanky.nvim",
    dependencies = {
      "kkharji/sqlite.lua",
      "folke/snacks.nvim",
    },

    opts = {
      system_clipboard = {
        sync_with_ring = not vim.env.SSH_CONNECTION,
      },
      ring = {
        storage = "sqlite",
      },
    },
    keys = {
      {
        "<leader>y",
        function()
          Snacks.picker.yanky()
        end,
        mode = { "n", "x" },
        desc = "Open yank history (Snacks picker)",
      },
      { "y", "<Plug>(YankyYank)", mode = { "n", "x" }, desc = "Yank text" },
      { "p", "<Plug>(YankyPutAfter)", mode = { "n", "x" }, desc = "Put after cursor" },
      { "P", "<Plug>(YankyPutBefore)", mode = { "n", "x" }, desc = "Put before cursor" },
      { "gp", "<Plug>(YankyGPutAfter)", mode = { "n", "x" }, desc = "Put after and leave cursor" },
      { "gP", "<Plug>(YankyGPutBefore)", mode = { "n", "x" }, desc = "Put before and leave cursor" },
      { "<c-p>", "<Plug>(YankyPreviousEntry)", desc = "Previous yank entry" },
      { "<c-n>", "<Plug>(YankyNextEntry)", desc = "Next yank entry" },
      { "]p", "<Plug>(YankyPutIndentAfterLinewise)", desc = "Put indented after (linewise)" },
      { "[p", "<Plug>(YankyPutIndentBeforeLinewise)", desc = "Put indented before (linewise)" },
      { ">p", "<Plug>(YankyPutIndentAfterShiftRight)", desc = "Put and indent right" },
      { "<p", "<Plug>(YankyPutIndentAfterShiftLeft)", desc = "Put and indent left" },
      { "=p", "<Plug>(YankyPutAfterFilter)", desc = "Put after applying filter" },
      { "=P", "<Plug>(YankyPutBeforeFilter)", desc = "Put before applying filter" },
    },
}
