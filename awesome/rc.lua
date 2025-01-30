
-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")

RC = {}
RC.vars = require("main.user-variables")
modkey = RC.vars.modkey
terminal = RC.vars.terminal
theme = RC.vars.theme

-- Standard awesome library
local gears = require("gears")
local awful = require("awful")
require("awful.autofocus")

-- Widget and layout library
local wibox = require("wibox")

-- Theme handling library
local beautiful = require("beautiful")

-- Error handling module
require("main.error-handling")

-- Load theme
beautiful.init(string.format("%s/.config/awesome/themes/%s/theme.lua", os.getenv("HOME"), theme))
-- }}}

local main = {
   layouts = require("main.layouts"),
   tags = require("main.tags"),
   mainmenu = require("main.menu"),
   rules = require("main.rules")
}

RC.layouts = main.layouts()
RC.tags = main.tags()
RC.mainmenu = awful.menu({ items = main.mainmenu() })
RC.launcher = awful.widget.launcher({ image = beautiful.awesome_icon,
                                     menu = RC.mainmenu })

local binding = {
   globalbuttons = require("binding.globalbuttons"),
   clientbuttons = require("binding.clientbuttons"),
   globalkeys = require("binding.globalkeys"),
   clientkeys = require("binding.clientkeys"),
   bindtotags = require("binding.bindtotags")
}

-- Keybindings
RC.globalkeys = binding.globalkeys()
RC.globalkeys = binding.bindtotags(RC.globalkeys)

root.buttons(binding.globalbuttons())
root.keys(RC.globalkeys)

-- Rules
awful.rules.rules = main.rules(
   binding.clientkeys(),
   binding.clientbuttons()
)

-- Keyboard map indicator and switcher
mykeyboardlayout = awful.widget.keyboardlayout()

-- Signals
require("main.signals")
require("deco.titlebar")

-- Autostart Applications
awful.spawn.with_shell("picom")
awful.spawn.with_shell("nitrogen --restore")
awful.spawn.with_shell("emacs --daemon")
