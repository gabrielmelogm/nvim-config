local kommentary = require("kommentary.config")

kommentary.configure_language("default", {
	single_line_comment_string = "auto",
	multi_line_comment_strings = "auto",
	hook_function = function()
		require("ts_context_commentstring").update_commentstring()
	end,
})
