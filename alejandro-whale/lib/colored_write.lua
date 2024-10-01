local termColors = require("lib.termcolors")

---Prints a text with format styled it takes a sring with a python `{key}content` like format where those key are changed with the ansi terminal color codes.
---@param _str string
local function coloredWrite(_str)
	for t, c in pairs(termColors) do
		_str = _str:gsub("{" .. t .. "}", c)
	end
	io.write(_str)
end

return coloredWrite
