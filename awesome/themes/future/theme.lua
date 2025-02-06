local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local themes_path = os.getenv("HOME") .. "/.config/awesome/themes/future/"


-- BASICS
local theme = {}
theme.font          = "Fira Code Nerd 10.5"

theme.bg_focus      = "#967745"
theme.bg_normal     = "#574D3E"
theme.bg_urgent     = "#D6952D"
theme.bg_minimize   = "#466581"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#fff"
theme.fg_focus      = "#fff"
theme.fg_urgent     = "#fff"
theme.fg_minimize   = "#fff"

theme.useless_gap   = dpi(8)
theme.border_width  = dpi(2)
theme.border_normal = "#466581"
theme.border_focus  = "#574D3E"
theme.border_marked = "#eeeeec"

-- IMAGES
theme.layout_fairh           = themes_path .. "icons/fairh.png"
theme.layout_fairv           = themes_path .. "icons/fairv.png"
theme.layout_floating        = themes_path .. "icons/floating.png"
theme.layout_magnifier       = themes_path .. "icons/magnifier.png"
theme.layout_max             = themes_path .. "icons/max.png"
theme.layout_fullscreen      = themes_path .. "icons/fullscreen.png"
theme.layout_tilebottom      = themes_path .. "icons/tilebottom.png"
theme.layout_tileleft        = themes_path .. "icons/tileleft.png"
theme.layout_tile            = themes_path .. "icons/tile.png"
theme.layout_tiletop         = themes_path .. "icons/tiletop.png"
theme.layout_spiral          = themes_path .. "icons/spiral.png"
theme.layout_dwindle         = themes_path .. "icons/dwindle.png"
theme.layout_cornernw        = themes_path .. "icons/cornernw.png"
theme.layout_cornerne        = themes_path .. "icons/cornerne.png"
theme.layout_cornersw        = themes_path .. "icons/cornersw.png"
theme.layout_cornerse        = themes_path .. "icons/cornerse.png"

theme.awesome_icon = themes_path .. "icons/ship-wheel.png"
-- theme.awesome_icon           = themes_path .. "icons/steampunk/pipes.png"
theme.awesome_submenu_icon = themes_path .. "icons/steampunk/old-lantern.png"

-- from default for now...
theme.menu_submenu_icon     = themes_path .. "icons/submenu.png"

-- generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

-- misc
theme.wallpaper             = themes_path .. "wallpaper.jpg"
theme.taglist_squares       = "false" 
theme.titlebar_close_button = "true"
theme.menu_height = dpi(20)
theme.menu_width  = dpi(120)

-- define the image to load
theme.titlebar_close_button_normal = themes_path .. "default/titlebar/close_normal.png"
theme.titlebar_close_button_focus = themes_path .. "default/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = themes_path .. "default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path .. "default/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path .. "default/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive = themes_path .. "default/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path .. "default/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active = themes_path .. "default/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path .. "default/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive = themes_path .. "default/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path .. "default/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active = themes_path .. "default/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path .. "default/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive = themes_path .. "default/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path .. "default/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active = themes_path .. "default/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path .. "default/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive = themes_path .. "default/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themes_path .. "default/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active = themes_path .. "default/titlebar/maximized_focus_active.png"

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
