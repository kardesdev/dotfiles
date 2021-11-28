local lspInstallerServers = require('nvim-lsp-installer.servers')

local okRust, rustLSP = lspInstallerServers.get_server('rust_analyzer')
if okRust then
  if not rustLSP:is_installed() then
    rustLSP:install()
  end
end

local okGo, goLSP = lspInstallerServers.get_server('gopls')
if okGo then
  if not goLSP:is_installed() then
    goLSP:install()
  end
end

local okTs, tsLSP = lspInstallerServers.get_server('tsserver')
if okTs then
  if not tsLSP:is_installed() then
    tsLSP:install()
  end
end

local okEslint, eslintLSP = lspInstallerServers.get_server('eslint')
if okEslint then
  if not eslintLSP:is_installed() then
    eslintLSP:install()
  end
end