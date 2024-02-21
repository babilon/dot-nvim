return {
    'hrsh7th/nvim-cmp',
    event = "InsertEnter",
    dependencies = {
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/cmp-cmdline'},
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        --{'L3MON4D3/LuaSnip'},
    },
    config = function()
        local cmp = require("cmp")
		local cmp_action = require('lsp-zero').cmp_action()
        --local luasnip = require("luasnip")

        local select_opts = {behavior = cmp.SelectBehavior.Select}

        cmp.setup({
            --snippet = {
            --    expand = function(args)
            --        luasnip.lsp_expand(args.body)
            --    end
            --},
            -- sources for autocompletion
            sources = cmp.config.sources({
                { name = "path" }, -- file system paths
                { name = "nvim_lsp" },
                { name = "buffer", keyword_length = 3}, -- text within current buffer
                --{ name = "luasnip", keyword_length = 2}, -- snippets
            }),
            window = {
				completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
            formatting = {
                fields = {'menu', 'abbr', 'kind'},
                format = function(entry, item)
                    local menu_icon = {
                        nvim_lsp = '[LSP]',
                        luasnip = '[SNIP]',
                        buffer = '[BUF]',
                        path = '[PATH]',
                    }
                    item.menu = menu_icon[entry.source.name]
                    return item
                end
            },
			trigger = {"<C-e>"},
            completion = {
                completeopt = "menu,menuone,noinsert,noselect",
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
                ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
                ["<C-e>"] = cmp.mapping.abort(), -- close completion window
                ["<CR>"] = cmp.mapping.confirm({ select = false }),
            }),
        })
    end,
}
