--vim.lsp.set_log_level("debug")
local nvim_lsp = require('lspconfig')
local protocol = require'vim.lsp.protocol'

-- do something on lsp attach
local function on_attach(_, bufnr)
    -- set mappings only in current buffer with lsp enabled
    local function buf_set_keymap(...)
        vim.api.nvim_buf_set_keymap(bufnr, ...)
    end
    -- set options only in current buffer with lsp enabled
    local function buf_set_option(...)
        vim.api.nvim_buf_set_option(bufnr, ...)
    end

    buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

    local opts = { noremap = true, silent = false }

    buf_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
    buf_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>" )
    buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
    buf_set_keymap("n", "<leader>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
    buf_set_keymap("n", "<leader>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
    buf_set_keymap("n", "<leader>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
    buf_set_keymap("n", "<leader>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
    buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
    buf_set_keymap("n", "<leader>Q", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", opts)
    buf_set_keymap("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)

    buf_set_keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>", opts)
    buf_set_keymap("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
    buf_set_keymap("v", "<leader>ca", "<cmd>Lspsaga range_code_action<CR>", opts)
    buf_set_keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
    buf_set_keymap("n", "<C-f>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>", opts)
    buf_set_keymap("n", "<C-b>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>", opts)
    buf_set_keymap("n", "gs", "<cmd>Lspsaga signature_help<CR>", opts)
    buf_set_keymap("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)
    buf_set_keymap("n", "gp", "<cmd>Lspsaga preview_definition<CR>", opts)
    buf_set_keymap("n", "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
    buf_set_keymap("n", "<leader>cc", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)
    buf_set_keymap("n", "[d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
    buf_set_keymap("n", "]d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
end

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" }
}

--[[ require'lspconfig'.jdtls.setup{ ]]
--[[    on_attach = on_attach, ]]
--[[    cmd = { 'jdtls' }, ]]
--[[    root_dir = function(fname) ]]
--[[       return require'lspconfig'.util.root_pattern('pom.xml', 'gradle.build', '.git')(fname) or vim.fn.getcwd() ]]
--[[ end ]]
--[[ } ]]
