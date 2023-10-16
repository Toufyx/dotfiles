------------------------------------------------------------------------
--                      configuration entrypoint                      --
------------------------------------------------------------------------

-- list all the core configuration files
local core_configuration_files = {
  'plugins.lua', -- all the plugins installed and their configurations
  'globals.lua', -- some global settings
  'mappings.lua', -- all the user-defined mappings
  'highlights.lua', -- all the user-defined highlights
}

-- source all the core configuration files
for _, configuration_file in ipairs(core_configuration_files) do
  local module, _ = string.gsub(configuration_file, '%.lua', '')
  package.loaded[module] = nil
  require(module)
end
