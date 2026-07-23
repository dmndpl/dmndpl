local wezterm = require("wezterm")
local act = wezterm.action

local config = wezterm.config_builder()

--------------------------------------------------
-- Appearance
--------------------------------------------------

config.color_scheme = "Catppuccin Frappe"

config.font = wezterm.font("JetBrains Mono")
config.font_size = 14.0
config.line_height = 1.05

config.window_padding = {
  left = 12,
  right = 12,
  top = 10,
  bottom = 10,
}

-- Subtle transparency rather than a glassy terminal.
config.window_background_opacity = 0.97
config.macos_window_background_blur = 20

-- Prevent Cmd-+/- from changing the outer window dimensions.
config.adjust_window_size_when_changing_font_size = false

--------------------------------------------------
-- Tabs
--------------------------------------------------

config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true

-- Uses the terminal font rather than the native-looking tab bar.
config.use_fancy_tab_bar = false
config.tab_max_width = 32

config.show_new_tab_button_in_tab_bar = false

--------------------------------------------------
-- Terminal behaviour
--------------------------------------------------
config.native_macos_fullscreen_mode = true
config.scrollback_lines = 10000
config.audible_bell = "Disabled"

-- Left Option behaves as terminal Alt.
-- Right Option still types characters such as ©, ± and accents.
config.send_composed_key_when_left_alt_is_pressed = false
config.send_composed_key_when_right_alt_is_pressed = true

--------------------------------------------------
-- Key bindings
--------------------------------------------------

config.keys = {
  -- Terminal.app-style word movement.
  {
    key = "LeftArrow",
    mods = "OPT",
    action = act.SendKey({
      key = "b",
      mods = "ALT",
    }),
  },
  {
    key = "RightArrow",
    mods = "OPT",
    action = act.SendKey({
      key = "f",
      mods = "ALT",
    }),
  },

  -- Useful WezTerm actions.
  {
    key = "Enter",
    mods = "CMD",
    action = act.ToggleFullScreen,
  },
  {
    key = "p",
    mods = "CMD|SHIFT",
    action = act.ActivateCommandPalette,
  },
  {
    key = "r",
    mods = "CMD|SHIFT",
    action = act.ReloadConfiguration,
  },
}

return config
