-- Cursor
hl.env("WLR_NO_HARDWARE_CURSORS", "1")
hl.env("XCURSOR_SIZE", "32")
hl.env("HYPRCURSOR_SIZE", "32")

-- Scaling
hl.env("GDK_SCALE", "2")
hl.env("STEAM_FORCE_DESKTOPUI_SCALING", "1.6")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")

-- XE driver for Dell Arc 140V
hl.env("WLR_RENDERER", "vulkan")
hl.env("LIBVA_DRIVER_NAME", "iHD")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "mesa")
