return {
  "neoclide/coc.nvim",
  branch = "release",
  event = {"BufReadPost","BufNewFile","InsertEnter"},
  config = function()

    -- TAB completion
    vim.keymap.set("i", "<Tab>", function()
      return vim.fn["coc#pum#visible"]() == 1
      and vim.fn
      or "<Tab>"
    end, { expr = true, silent = true })

    vim.keymap.set("i", "<CR>", function()
      return vim.fn["coc#pum#visible"]() == 1
      and vim.fn["coc#pum#confirm"]()
      or "<CR>"
    end, { expr = true, silent = true })

    -- LSP
    vim.keymap.set("n", "gd", "<Plug>(coc-definition)", {})
    vim.keymap.set("n", "gr", "<Plug>(coc-references)", {})
    vim.keymap.set("n", "K", "<Cmd>call CocActionAsync('doHover')<CR>", {})
    vim.keymap.set("n", "<leader>a", "<Plug>(coc-codeaction-selected)", { silent = true })
    vim.keymap.set("v", "<leader>a", "<Plug>(coc-codeaction-selected)", { silent = true })
    vim.keymap.set("n", "<leader>ac", "<Plug>(coc-codeaction-cursor)", { silent = true })
    vim.keymap.set("n", "<leader>rn", "<Plug>(coc-rename)", { silent = true })

    vim.cmd([[
    inoremap <silent><expr> <Tab>
    \ coc#pum#visible() ? coc#pum#next(1) :
    \ "\<Tab>"

    inoremap <silent><expr> <S-Tab>
    \ coc#pum#visible() ? coc#pum#prev(1) :
    \ "\<S-Tab>"

    inoremap <silent><expr> <CR>
    \ coc#pum#visible() ? coc#pum#confirm() :
    \ "\<CR>"
    ]])

  end,
}
