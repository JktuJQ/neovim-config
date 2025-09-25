return {
    "Vigemus/iron.nvim",
    init = function()
        local remap = require("remaps")
        remap("n", "<leader>if", "<cmd>IronFocus<cr>")
        remap("n", "<leader>ih", "<cmd>IronHide<cr>")
    end,
    config = function()
        local iron = require("iron.core")
        local view = require("iron.view")
        local common = require("iron.fts.common")

        iron.setup({
            config = {
                scratch_repl = true,
                repl_definition = {
                    sh = {
                        command = {"zsh"}
                    },
                    python = {
                        command = { "python3" },
                        format = common.bracketed_paste_python,
                        block_dividers = { "# %%", "#%%" },
                        env = { PYTHON_BASIC_REPL = "1" }
                    },
                    haskell = {
                        command = function(meta)
                            local filename = vim.api.nvim_buf_get_name(meta.current_bufnr)
                            return { "cabal", "v2-repl", filename }
                        end
                    }
                },
                repl_filetype = function(_, ft)
                    return ft
                end,
                dap_integration = true,
                repl_open_cmd = view.split.vertical.botright(70),
            },
            keymaps = {
                toggle_repl = "<leader>ir",
                restart_repl = "<leader>iR",
                send_motion = "<leader>ism",
                visual_send = "<leader>ism",
                send_file = "<leader>isf",
                send_line = "<leader>isl",
                send_paragraph = "<leader>isp",
                send_until_cursor = "<leader>isu",
                send_mark = "<leader>ism",
                send_code_block = "<leader>isb",
                mark_motion = "<leader>imc",
                mark_visual = "<leader>imc",
                remove_mark = "<leader>imd",
                cr = "<leader>is<cr>",
                interrupt = "<leader>is<space>",
                exit = "<leader>isq",
                clear = "<leader>icl",
            },
            ignore_blank_lines = true,
        })
    end
}
