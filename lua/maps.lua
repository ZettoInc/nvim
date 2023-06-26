local mapeos = function(modo, tecla, resultado)
	vim.api.nvim_set_keymap(modo, tecla, resultado, { noremap = true, silent = true })
end

-- Generales
mapeos("n", "<c-s>", ":write<cr>") -- Guardar
mapeos("i", "<c-s>", "<esc>:write<cr>a")

mapeos("n", "<c-q>", ":quit<cr>") -- Salir
mapeos("i", "<c-q>", "<esc>:quit<cr>") 

mapeos("n", "<c-r>", ":luafi %<cr>") -- Recargar
mapeos("i", "<c-r>", "<esc>:luafi %<cr>a")

mapeos("n", "lg", ":LazyGit<cr>") -- Abrir LazyGit

mapeos("n", "term", ":split<cr>:term<cr>:set nonumber norelativenumber nocursorline<cr>:resize 8<cr>a")

-- Mapeos para LSP
mapeos('n', '<space>e', ":lua vim.diagnostic.open_float()<cr>")
mapeos('n', '[d', ":lua vim.diagnostic.goto_prev()<cr>")
mapeos('n', ']d', ":lua vim.diagnostic.goto_next()<cr>")
mapeos('n', '<space>q', ":lua vim.diagnostic.setloclist()<cr>")

-- Para TELESCOPE
mapeos("n", "<c-l>", ":Telescope<cr>")
mapeos("i", "<c-l>", "<esc>:Telescope<cr>")
mapeos("n", "<c-l>f", ":Telescope find_files<cr>")
mapeos("i", "<c-l>f", "<esc>:Telescope find_files<cr>")
mapeos("n", "<c-l>sb", ":Telescope symbols<cr>")
mapeos("i", "<c-l>sb", "<esc>:Telescope symbols<cr>")
mapeos("n", "<c-l>ht", ":Telescope help_tags<cr>")
mapeos("i", "<c-l>ht", "<esc>:Telescope help_tags<cr>")

-- Para NEURAL
mapeos("n", "<c-a-n>", ":Neural<cr>")
mapeos("i", "<c-a-n>", "<esc>:Neural<cr>")

-- Para NEO-TREE
mapeos("n", "<c-z>", ":NeoTreeFocus<cr>")
mapeos("i", "<c-z>", "<esc>:NeoTreeFocus<cr>")

-- Para BUFFERLINE
mapeos("n", "<c-b>1", ":BufferLineGoToBuffer 1<cr>")
mapeos("n", "<c-b>2", ":BufferLineGoToBuffer 2<cr>")
mapeos("n", "<c-b>3", ":BufferLineGoToBuffer 3<cr>")
mapeos("n", "<c-b>4", ":BufferLineGoToBuffer 4<cr>")
mapeos("n", "<c-b>5", ":BufferLineGoToBuffer 5<cr>")
mapeos("n", "<c-b>6", ":BufferLineGoToBuffer 6<cr>")
mapeos("n", "<c-b>7", ":BufferLineGoToBuffer 7<cr>")
mapeos("n", "<c-b>8", ":BufferLineGoToBuffer 8<cr>")
mapeos("n", "<c-b>9", ":BufferLineGoToBuffer 9<cr>")
mapeos("i", "<c-b>1", "<esc>:BufferLineGoToBuffer 1<cr>")
mapeos("i", "<c-b>2", ":<esc>BufferLineGoToBuffer 2<cr>")
mapeos("i", "<c-b>3", "<esc>:BufferLineGoToBuffer 3<cr>")
mapeos("i", "<c-b>4", "<esc>:BufferLineGoToBuffer 4<cr>")
mapeos("i", "<c-b>5", "<esc>:BufferLineGoToBuffer 5<cr>")
mapeos("i", "<c-b>6", "<esc>:BufferLineGoToBuffer 6<cr>")
mapeos("i", "<c-b>7", "<esc>:BufferLineGoToBuffer 7<cr>")
mapeos("i", "<c-b>8", "<esc>:BufferLineGoToBuffer 8<cr>")
mapeos("i", "<c-b>9", "<esc>:BufferLineGoToBuffer 9<cr>")
