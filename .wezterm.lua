
local wezterm = require 'wezterm'

local config = {}

-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "node"
config.window_decorations = "NONE"

-- font
config.font = wezterm.font("Roboto Mono for Powerline")


if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- カラースキームの設定(おすすめはMaterialDesignColors)
-- config.color_scheme = 'MaterialDesignColors'

-- 背景透過
config.window_background_opacity = 0.90
config.macos_window_background_blur = 15

-- 最初からフルスクリーンで起動
local mux = wezterm.mux
wezterm.on("gui-startup", function(cmd)
    local tab, pane, window = mux.spawn_window(cmd or {})
    window:gui_window():toggle_fullscreen()
end)

-- フォントの設定
-- config.font = wezterm.font("好きなフォント", {weight="Medium", stretch="Normal", style="Normal"})

-- フォントサイズの設定
config.font_size = 14

-- ショートカットキー設定
local act = wezterm.action
config.keys = {
  {
    key = 'f',
    mods = 'SHIFT|CMD',
    action = wezterm.action.ToggleFullScreen
  },
  {
    key = 't',
    mods = 'SHIFT|CTRL',
    action = act.SpawnTab 'CurrentPaneDomain'
  },
  {
    key = 'd',
    mods = 'CMD',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' }
  },
  {
    key = 'd',
    mods = 'CMD|SHIFT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = ']',
    mods = 'CMD',
    action = wezterm.action.ActivatePaneDirection 'Next',
  },
  {
    key = '[',
    mods = 'CMD',
    action = wezterm.action.ActivatePaneDirection 'Prev',
  },
  {
    key = 'o',
    mods = 'CTRL',
    action = wezterm.action{
      PaneSelect = {}
    },
  },
  {
    key = 'w',
    mods = 'CMD',
    action = wezterm.action.CloseCurrentPane { confirm = true },
  },
  -- Ctrl+左矢印でカーソルを前の単語に移動
  {
    key = "LeftArrow",
    mods = "CTRL",
    action = act.SendKey {
      key = "b",
      mods = "META",
    },
  },
  -- Ctrl+右矢印でカーソルを次の単語に移動
  {
    key = "RightArrow",
    mods = "CTRL",
    action = act.SendKey {
      key = "f",
      mods = "META",
    },
  },
  -- Ctrl+Backspaceで前の単語を削除
  {
    key = "Backspace",
    mods = "CTRL",
    action = act.SendKey {
      key = "w",
      mods = "CTRL",
    },
  },
}

return config
