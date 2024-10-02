---Extra terminal codes for terminals that support them.
---@enum terminal_extended
local extended = {
	bold = "\27[1m",
	blink = "\27[5m",
	invert = "\27[7m",
	hidden = "\27[8m",
	italic = "\27[3m",
	underline = "\27[4m",
	striketrhough = "\27[9m",

}
return extended
