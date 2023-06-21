local wezterm = require 'wezterm';

local color_scheme_pool = {
  'nord',
  --'Fideloper',
  --'Spacedust',
  --'Aurora', -- like!
  --'Tomorrow Night Burns',
  --'Subliminal',
  --'Firewatch',
  --------
  --'MonaLisa',
  --'Fahrenheit',
  --'IC_Orange_PPL',
  --'SleepyHollow',
  --'ayu',
  --'jubi',
  --'SeaShells',
  --'Seafoam Pastel',
  --'Gruvbox Dark',
  --'MaterialOcean',
  --'Twilight',
  --'ForestBlue',
  --'Shaman',
  --'Grape',
  --'Tinacious Design (Dark)',
  --'iceberg-dark',
  --'matrix',
  --'GitHub Dark',
  --'JetBrains Darcula',
  --'Thayer Bright',
  --'BlulocoDark',
  --'DoomOne',
  --'Slate', -- like!
  --'Tomorrow Night Eighties',
  --'Tomorrow Night',
  --'Earthsong',
  --'Espresso Libre',
  --'FunForrest',
}

math.randomseed(os.time())
local color_scheme_index = math.random(#(color_scheme_pool))
local color_scheme = color_scheme_pool[color_scheme_index]

wezterm.on("window-config-reloaded", function(window, pane)
  -- Make it italic and underlined
  window:set_right_status(wezterm.format({
    { Attribute = { Intensity = "Half" } },
    { Text = window:effective_config().color_scheme .. "     " },
  }));
end);

return {
  color_scheme = color_scheme,
  font = wezterm.font_with_fallback({ "MonoLisa Custom", "JetBrains Mono", "Dank Mono", "RobotoMono Nerd Font Mono" }),
  initial_rows = 40,
  initial_cols = 105,
  window_padding = {
    left = 5,
    right = 5,
    top = 0,
    bottom = 0,
  },
  font_size = 20
}
