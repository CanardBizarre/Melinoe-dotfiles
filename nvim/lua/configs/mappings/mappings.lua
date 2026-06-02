local map = require("configs.mappings.map")

-- Nvim navigation
map('n', "<leader>pv", vim.cmd.Ex, {desc = "Goes back to Ntrew"}) 


-- Plugins related --

-- Telescope 
map("n", "<C-p>", function()
  require("telescope.builtin").find_files()
end, { desc = "Find files" })

map("n", "<leader>fg", function()
  require("telescope.builtin").live_grep()
end, { desc = "Live grep" })

