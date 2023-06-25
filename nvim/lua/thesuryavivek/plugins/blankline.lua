local status, blankline = pcall(require, "indent_blankline")
if not status then
	return
end

blankline.setup({
	show_trailing_blankline_indent = false,
	show_current_context = true,
})
