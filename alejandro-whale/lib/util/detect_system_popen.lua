---Detects the system is running on, tries first
---unsing jit then tries to execute uname and then gives up and assumes that is Windows
---@return string system The os name: `GNU/Linux` or `Windows` depending the case.
local function detectSystem()
	-- ask LuaJIT first
	---@diagnostic disable-next-line: undefined-global
	if jit then
		---@diagnostic disable-next-line: undefined-global
		return jit.os
	end

	-- Unix, Linux variants
	local fh, err = assert(io.popen("uname -o 2>/dev/null", "r"))
	local osname
	if fh then
		osname = fh:read()
	end

	--Give up
	return osname or "Windows"
end
