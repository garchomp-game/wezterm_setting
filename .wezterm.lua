local wezterm = require 'wezterm';

local config = {}

if wezterm.target_triple:match("windows") then
  config.default_prog = {"wsl.exe"}
end
config.font = wezterm.font("UbuntuMono Nerd Font")

return config
