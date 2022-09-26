local status, trouble = pcall(require, "trouble")
if (not status) then
  print("Touble.nvim not installed")
  return
end

trouble.setup {
  position = "bottom",
  height = 8,
  icons = true,
  auto_open = true,
  auto_close = true,
  mode = "loclist"
}

vim.keymap.set("n", "gx", "<cmd>call coc#rpc#request('fillDiagnostics', [bufnr('%')])<CR><cmd>TroubleToggl loclist<CR>", { silent = true, noremap = true })
