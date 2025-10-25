require("mason").setup()
require("inc_rename").setup()

vim.keymap.set("n", "<Space>r", ":IncRename ")

-- Mason-lspconfig integration
require("mason-lspconfig").setup({
    ensure_installed = {
        "clangd",
        "gopls",
        "zls",
    },
})

-- Set up completion capabilities
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Default LSP attach function
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(event)
        local opts = {buffer = event.buf, remap = false}
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    end,
})

-- Configure LSP servers using native vim.lsp.config
vim.lsp.config.clangd = {
    cmd = {'clangd'},
    filetypes = {'c', 'cpp', 'objc', 'objcpp'},
    root_markers = {'.clangd', '.clang-tidy', '.clang-format', 'compile_commands.json', 'compile_flags.txt', 'configure.ac', '.git'},
    capabilities = lsp_capabilities,
}

vim.lsp.config.gopls = {
    cmd = {'gopls'},
    filetypes = {'go', 'gomod', 'gowork', 'gotmpl'},
    root_markers = {'go.work', 'go.mod', '.git'},
    capabilities = lsp_capabilities,
}

vim.lsp.config.zls = {
    cmd = {'zls'},
    filetypes = {'zig', 'zir'},
    root_markers = {'zls.json', 'build.zig', '.git'},
    capabilities = lsp_capabilities,
}

-- Enable the LSP servers
vim.lsp.enable('clangd')
vim.lsp.enable('gopls')
vim.lsp.enable('zls')

-- Set up nvim-cmp
local cmp = require('cmp')
cmp.setup({
    sources = {
        {name = 'nvim_lsp'},
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior.Select}),
        ['<C-n>'] = cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Select}),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ['<Enter>'] = cmp.mapping.confirm({ select = true }),
    }),
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
})

-- Telescope config (unchanged)
local tele_builtin = require('telescope.builtin')
vim.keymap.set('n', '<Space>s', tele_builtin.current_buffer_fuzzy_find, {})
vim.keymap.set('n', '<Space>f', tele_builtin.find_files, {})
vim.keymap.set('n', '<Space>g', tele_builtin.live_grep, {})
vim.keymap.set('n', '<Space>j', tele_builtin.jumplist, {})
vim.keymap.set('n', '<Space>m', tele_builtin.man_pages, {})
vim.keymap.set('n', '<Space>o', tele_builtin.oldfiles, {})
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
