local termColors = require("lib.termcolors")
local colorize = require("lib.util.colorize")

---Prints a text with format styled it takes a sring with a python `{key}content` like format where those key are changed with the ansi terminal color codes.
---@param str string
local function coloredWrite(str)
	io.write(colorize(str))
end

return coloredWrite
