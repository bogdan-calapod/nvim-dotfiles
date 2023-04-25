require("mason-null-ls").setup({
  ensure_installed = {
    -- Opt to list sources here, when available in mason.
  },
  automatic_installation = false,
  automatic_setup = true, -- Recommended, but optional
})

local augroup = vim.api.nvim_create_augroup('LspFormatting', {})

require("null-ls").setup({
  sources = {
    require("typescript.extensions.null-ls.code-actions"),
  },
  on_attach = function(client, bufnr)
      if client.supports_method("textDocument/formatting") then
			  vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
  			vim.api.nvim_create_autocmd("BufWritePre", {
	  			group = augroup,
		  		buffer = bufnr,
			  	callback = function()
			  		vim.lsp.buf.formatting_sync()
    			end,
		    })
  		end
	end,
})
--  ╭──────────────────────────────────────────────────────────╮
--  │ require("mason-null-ls").setup_handlers() -- If          │
--  │  `automatic_setup` is true.                              │
--  ╰──────────────────────────────────────────────────────────╯
