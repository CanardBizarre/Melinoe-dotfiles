local var = require("utility.variables")

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind(var.mod .. " + Q", hl.dsp.exec_cmd(var.terminal))
hl.bind(var.mod .. " + F", hl.dsp.exec_cmd(var.browser))
hl.bind(var.mod .. " + T", hl.dsp.exec_cmd(var.process))
hl.bind(var.mod .. " + E", hl.dsp.exec_cmd(var.fileManager))
hl.bind(var.mod .. " + R", hl.dsp.exec_cmd(var.menu))
hl.bind(var.mod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(var.mod .. " + P", hl.dsp.window.pseudo())
hl.bind(var.mod .. " + J", hl.dsp.layout("togglesplit")) -- dwindle XF86AudioPlay
hl.bind(var.mod .. " + C", hl.dsp.window.close())

-- Move focus with var.mod + arrow keys
hl.bind(var.mod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(var.mod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(var.mod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(var.mod .. " + down", hl.dsp.focus({ direction = "down" }))

hl.bind(var.mod .. " + ampersand", hl.dsp.focus({ workspace = 1 }))
hl.bind(var.mod .. " + eacute", hl.dsp.focus({ workspace = 2 }))
hl.bind(var.mod .. " + quotedbl", hl.dsp.focus({ workspace = 3 }))
hl.bind(var.mod .. " + apostrophe", hl.dsp.focus({ workspace = 4 }))
hl.bind(var.mod .. " + parenleft", hl.dsp.focus({ workspace = 5 }))
hl.bind(var.mod .. " + egrave", hl.dsp.focus({ workspace = 6 }))
hl.bind(var.mod .. " + minus", hl.dsp.focus({ workspace = 7 }))
hl.bind(var.mod .. " + underscore", hl.dsp.focus({ workspace = 8 }))
hl.bind(var.mod .. " + ccedilla", hl.dsp.focus({ workspace = 9 }))
hl.bind(var.mod .. " + agrave", hl.dsp.focus({ workspace = 10 }))

hl.bind(var.mod .. " + SHIFT + ampersand", hl.dsp.window.move({ workspace = 1 }))
hl.bind(var.mod .. " + SHIFT + eacute", hl.dsp.window.move({ workspace = 2 }))
hl.bind(var.mod .. " + SHIFT + quotedbl", hl.dsp.window.move({ workspace = 3 }))
hl.bind(var.mod .. " + SHIFT + apostrophe", hl.dsp.window.move({ workspace = 4 }))
hl.bind(var.mod .. " + SHIFT + parenleft", hl.dsp.window.move({ workspace = 5 }))
hl.bind(var.mod .. " + SHIFT + egrave", hl.dsp.window.move({ workspace = 6 }))
hl.bind(var.mod .. " + SHIFT + minus", hl.dsp.window.move({ workspace = 7 }))
hl.bind(var.mod .. " + SHIFT + underscore", hl.dsp.window.move({ workspace = 8 }))
hl.bind(var.mod .. " + SHIFT + ccedilla", hl.dsp.window.move({ workspace = 9 }))
hl.bind(var.mod .. " + SHIFT + agrave", hl.dsp.window.move({ workspace = 10 }))

-- Laptop multimedia keys for volume and LCD brightness
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
