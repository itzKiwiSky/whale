local Command = {}

Command.commands = {}

--- Checks if a path is a directory
--- @param path string Path to check.
--- @return boolean isdir True when is a directory false otherwise.
local function isDir(path)
    local attr = lfs.attributes(path)
    return attr and attr.mode == "directory"
end

--- Function to crawl the folder and build the structure.
--- Calls itself to look inside of more folders.
--- @param path string Root folder path to start looking.
--- @return table index Contains the manifest of each file reported.
local function crawlFolder(p)
    local result = {}

    local function _scan(path)
        for file in lfs.dir(path) do
            if file ~= "." and file ~= ".." then
                local fullPath = path .. "/" .. file
                if isDir(fullPath) then
                    -- Recursively crawl subdirectories
                    _scan(fullPath)
                elseif file:match("%.lua$") then
                    -- Load the Lua file and store its result
                    table.insert(result, fullPath)
                end
            end
        end
    end

    _scan(p)

    return result
end

function Command.init()
    local files = crawlFolder("whale/src/Commands")
    local cmdTables = {}

    for f = 1, #files, 1 do
        local filename = files[f]:match("[^/]+$")
        Command.commands[(filename:gsub(".lua", "")):lower()] = require((files[f]:gsub("/", ".")):gsub(".lua", ""))
        --cmdTables[(filename:gsub(".lua", "")):lower()] = require((files[f]:gsub("/", ".")):gsub(".lua", ""))
    end

    --print("------")
    --print(debug.formattable(Command.commands))
    --print("------")
end

function Command.run(task)
    local execCmd = table.concat(task, " ")
    local tkn = string.split(execCmd, " ")
    if #tkn > 0 then
        local cmd = tkn[1]
        table.remove(tkn, 1)
        if Command.commands[cmd].action then
            Command.commands[cmd].action(unpack(tkn))
            return
        end
    end
    help.msg()
end

return Command