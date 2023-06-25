local status, colors = pcall(require, "document-color")
if not status then
	return
end

colors.setup({
	mode = "single",
})
