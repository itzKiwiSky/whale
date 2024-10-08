local extended = require("whale.src.utils.ExtendedAnsi")
local system = require("whale.src.utils.DetectOS")()

local serpent = require("whale.src.lib.serpent")

---Takes a sring with a python `{key}content` like format where those key are changed with the ansi terminal color codes
---@param str string Plain text with the commands human readable.
---@return string modstr The string with the funny symbols baked in.
local function colorize(str)
    for t, c in pairs(termColors) do
        str = str:gsub("{" .. t .. "}", c)
    end

    -- For unix people we make another pass.
    -- For non unix we just remove the thing.
    for style, code in pairs(extended) do
        if system == "Linux" then
            str = str:gsub("{" .. style .. "}", code)
        else
            str = str:gsub("{" .. style .. "}", "")
        end
    end
    return str
end

return colorize