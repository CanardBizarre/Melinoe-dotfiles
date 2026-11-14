local var = require("utility.variables")

hl.on("hyprland.start", function()
	hl.exec_cmd(var.terminal)
	hl.exec_cmd("nm-applet")
	hl.exec_cmd("waybar & hyprpaper")
end)
