local configController = {}
local config = require("whale.src.Config.BaseConfig")
local system = require("whale.src.utils.DetectOS")()
local confFolder = "Linux" == system and "~/.local/whale/" or os.getenv("userprofile") .. "\\AppData\\Local\\whale\\"
local separator = "Linux" == system and "/" or "\\"


function configController.loadConfig()
    if system == "Linux" then
        os.execute("mkdir -p " .. confFolder)
        os.execute("touch " .. confFolder .. ".whaleconfig")
    else
        os.execute("mkdir " .. confFolder)
        os.execute("echo. >> " .. confFolder .. ".whaleconfig")
    end
end

return configController, config
