local Help = {}

local function convertToHelp(inputtbl)
    for key, cmd in pairs(inputtbl) do

    end
end

function Help.msg()
    io.printf("{bold}{underline}{brightCyan}Whale{reset}. The{bold}{brightMagenta} Lövely {reset}Package manager\n\n")

    local helptbl = convertToHelp(command.commands)

    for key, command in pairs(command.commands) do
        
    end
end

return Help