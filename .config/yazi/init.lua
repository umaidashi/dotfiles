require("full-border"):setup()
require("git"):setup()

THEME.git = THEME.git or {}
THEME.git.added = ui.Style():fg("green")
THEME.git.modified = ui.Style():fg("blue")
THEME.git.deleted = ui.Style():fg("red"):bold()
THEME.git = THEME.git or {}
THEME.git.added_sign = "A"
THEME.git.modified_sign = "M"
THEME.git.deleted_sign = "D"
