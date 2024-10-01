local actions = {}
local lfs = require("lfs")

---Checks if the current folder contains the ocean manager already.
---@param projectPath any
---@return boolean success True on succes false otherwise
function actions.checkForOcean(projectPath)
	local success = false
	return success
end

---Starts a ocean manager folder on the given project path
---@param projectPath string path to the project
---@return boolean success True on succes false otherwise
function actions.initializeOcean(projectPath)
	local success = false
	return success
end

---Runs based off of the parameters given by the user
function actions.run(arguments)

end

return actions
