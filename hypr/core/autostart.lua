local var = require("utility.variables")

hl.on("hyprland.start", function()
	hl.exec_cmd(var.terminal)
	hl.exec_cmd("nm-applet")
	hl.exec_cmd("waybar & hyprpaper")
	hl.exec_cmd(
		"bash -c 'steam & while ! pgrep -x steam > /dev/null; do sleep 1; done; sleep 5 && steam steam://rungameid/3548580'"
	)
end)
