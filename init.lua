-- local pipepath = vim.fn.stdpath("cache") .. "/server.pipe"
-- if not vim.loop.fs_stat(pipepath) then
--   vim.fn.serverstart(pipepath)
-- end

local vimrc = vim.fn.stdpath("config") .. "/nvimconfig.vim"
vim.cmd.source(vimrc)

local project_file = vim.fn.getcwd() .. '/project.godot'
if project_file then
  vim.fn.serverstart './godothost'
  local main_file = vim.fn.getcwd() .. '/source_code/main.gd'
  vim.cmd('e' .. main_file)
  local pavon_godot_config = vim.fn.stdpath("config") .. "/gdev/plugin/pavon_godot.lua"
  vim.cmd.source(pavon_godot_config)
  vim.cmd('LspStart')
end

