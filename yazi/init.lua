
require("recycle-bin"):setup()

local tokyo_night_theme = require("yatline-tokyo-night"):setup("night")
require("yatline"):setup({
-- ===

 theme = tokyo_night_theme,

-- ===
})

require("full-border"):setup {
	-- Available values: ui.Border.PLAIN, ui.Border.ROUNDED
	type = ui.Border.ROUNDED,
}
