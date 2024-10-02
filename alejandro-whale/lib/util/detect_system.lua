---Detects the system is running on (naive)
---@return string system `Linux` or `Windows`
---@nodiscard
local function detectSystem()
	return package.config:sub(1, 1) == "/" and "Linux" or "Windows"
end

return detectSystem
