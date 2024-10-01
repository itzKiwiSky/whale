local termColors = require("lib.termcolors")

---Takes a sring with a python `{key}content` like format where those key are changed with the ansi terminal color codes
---@param str string Plain text with the commands human readable.
---@return string modstr The string with the funny symbols baked in.
local function colorize(str)
	for t, c in pairs(termColors) do
		str = str:gsub("{" .. t .. "}", c)
	end
	return str
end

return colorize
