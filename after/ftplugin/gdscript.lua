local port = os.getenv("GDScript_Port") or 6005

return {
  cmd = vim.lsp.rpc.connect("127.0.0.1", port),
  filetypes = { "gdscript" },
  root_markers = { "project.godot", ".git" },
  on_attach = function()
    vim.fn.serverstart("/tmp/godot.pipe")
  end,
}
