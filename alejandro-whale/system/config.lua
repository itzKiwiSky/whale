local configController = {}
local config = require("system.base_config")
local system = require("lib.util.detect_system")()
local confFolder = "Linux" == system and "~/.local/whale/" or os.getenv("userprofile") .. "\\AppData\\Local\\whale\\"
local separator = "Linux" == system and "/" or "\\"


function configController.loadConfig()
	if system == "Linux" then
		os.execute("mkdir -p " .. confFolder)
		os.execute("touch " .. confFolder .. "config.lua")
	else
		os.execute("mkdir " .. confFolder)
		os.execute("echo. >> " .. confFolder .. "config.lua")
	end
end

return configController, config
