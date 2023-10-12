local status_ok, tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

tree.setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

local keymap = vim.keymap.set
-- Plugin-Specific keymap
keymap("n", "<leader>tt", ":NvimTreeToggle<CR>", { silent = true, noremap = true })

