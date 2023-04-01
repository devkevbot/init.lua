local wk = require("which-key")

wk.register({
    -- Harpoon
    ["<leader>a"] = { "Harpoon: Add mark to file" },
    ["<C-e>"] = { "Harpoon: Toggle quick menu" },
    ["<leader>h1"] = { "Harpoon: Go to mark 1" },
    ["<leader>h2"] = { "Harpoon: Go to mark 2" },
    ["<leader>h3"] = { "Harpoon: Go to mark 4" },
    ["<leader>h4"] = { "Harpoon: Go to mark 4" },
    -- Telescope
    ["<leader>pf"] = { "Telescope: Find project files" },
    ["<leader><C-p>"] = { "Telescope: Find git project files" },
    ["<leader>ps"] = { "Telescope: Manual grep project files" },
    ["<leader>pg"] = { "Telescope: Live grep project files" },
})
