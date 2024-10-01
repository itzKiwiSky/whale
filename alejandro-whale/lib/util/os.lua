local termColors = require("lib.termcolors")
local oldexit = os.exit


---This is a modified version that always throws a reset ansi code to fix the terminal upon exit.
---
--- Calls the ISO C function exit to terminate the host program. If code is true, the returned status is EXIT_SUCCESS; if code is false, the returned status is EXIT_FAILURE; if code is a number, the returned status is this number. The default value for code is true.
---
--- If the optional second argument close is true, the function closes the Lua state before exiting (see lua_close).
---
---[View documents](http://www.lua.org/manual/5.4/manual.html#pdf-os.exit)
---
---@param code?  boolean|integer
---@param close? boolean
function os.exit(code, close)
	io.stdout:write(termColors[reset])
	oldexit(code, close)
end
