require("mason").setup()

local lsp = require('lsp-zero')
lsp.preset({})

lsp.ensure_installed({
    "clangd",
    "gopls",
    "tsserver",
    "zls",
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping.confirm({ select = true }),
})
lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "[g", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]g", function() vim.diagnostic.goto_prev() end, opts)
end)

lsp.setup()

local tele_builtin = require('telescope.builtin')
vim.keymap.set('n', '<Space>f', tele_builtin.find_files, {})
vim.keymap.set('n', '<Space>\'', tele_builtin.resume, {})

local actions = require("telescope.actions")
require("telescope").setup{
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<C-q>"] = actions.close,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    },
  }
}
