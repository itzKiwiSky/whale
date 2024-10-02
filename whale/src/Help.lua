local Help = {}

--{brightMagenta}@


local function convertToHelp(inputtbl)
    local h = {}
    for key, cmd in pairs(inputtbl) do
        if h[cmd.category] then
            h[cmd.category][cmd.name:lower()] = cmd
        else
            h[cmd.category] = {}
            h[cmd.category][cmd.name:lower()] = cmd
        end
    end
    return h
end

function Help.version()
    local logo = [[
{brightCyan}            .__%iiii==__
         .<%nnonvnvnnoonvi,
       _innnnnnnnnvnnnnnvnvs,
      <vnvnvnvnvnvnnvnnvnnnnv%.
     <vnnnnnnn{black}o{brightCyan}nnnnvnnvnn{black}o{brightCyan}nvnvi.
    =nnnvnvnvnnnvnvnnnnnvnnnnns=
.  .vvvnnn{brightMagenta}n{brightCyan}vnvnvnn nv vnnnv{brightMagenta}n{brightCyan}vvvl
v=_ivnnnvnvnnvnnnvn  vnnvnnnnnvl
vv}{vnnvnnnnvilnnnnnvvvnnvnvilv>
|~  +vvnnvnvnnnnnvnvnnnnvnnnnni
     -Innnnnnnvnvnnnvnvnnnvnv>-
      -+IvnvnvnnnnvnnnnnvnvI+
         ~<vnnnvnvnnvnvvv}~-
            -^"{*ll}}+"--
{reset}
]]

io.printf(logo .. "\n")

io.printf("{bold}{underline}{brightCyan}Whale{reset}. The{bold}{brightMagenta} Lövely {reset}Package manager\n\n")
end

function Help.msg()

    help.version()

    local helptbl = convertToHelp(command.commands)
    --print(debug.formattable(helptbl))

    for key, command in pairs(helptbl) do
        -- display category --
        io.printf(string.format("[+]{brightCyan} %s{reset}\n", key))

        -- display commands --
        for cmdkey, cmd in pairs(helptbl[key]) do
            io.printf(string.format("\t{brightCyan}[%s] {reset} ", cmdkey))

            if cmd.description then
                io.printf(string.format("{brightMagenta}%s {reset}\n", cmd.description))
            end

            -- display alias if has --
            if cmd.alias and #cmd.alias > 0 then
                io.printf(string.format("\t{cyan}Aliases: (%s) {reset}\n", table.concat(cmd.alias, ", ")))
            end

            -- display arguments --
            if cmd.arguments and #cmd.arguments > 0 then
                for a = 1, #cmd.arguments, 1 do
                    if a ~= #cmd.arguments then
                        --io.printf(string.format("\t{magenta}├ %s : %s{reset}\n", ))
                        if cmd.arguments[a].optional then
                            io.printf(string.format("\t\t{bold}{brightYellow}[?]{reset}{magenta}├ %s : %s{reset}\n", cmd.arguments[a].name, cmd.arguments[a].description))
                        elseif cmd.arguments[a].deprecated then
                            io.printf(string.format("\t\t{bold}{brightRed}[!]{reset}{magenta}├ %s : %s{reset}\n", cmd.arguments[a].name, cmd.arguments[a].description))
                        else
                            io.printf(string.format("\t\t{magenta}├ %s : %s{reset}\n", cmd.arguments[a].name, cmd.arguments[a].description))
                        end
                    else
                        --io.printf(string.format("\t{magenta}└ %s : %s{reset}\n"))
                        if cmd.arguments[a].optional then
                            io.printf(string.format("\t\t{bold}{brightYellow}[?]{reset}{magenta}└  %s : %s{reset}\n", cmd.arguments[a].name, cmd.arguments[a].description))
                        elseif cmd.arguments[a].deprecated then
                            io.printf(string.format("\t\t{bold}{brightRed}[!]{reset}{magenta}└  %s : %s{reset}\n", cmd.arguments[a].name, cmd.arguments[a].description))
                        else
                            io.printf(string.format("\t\t{magenta}└  %s : %s{reset}\n", cmd.arguments[a].name, cmd.arguments[a].description))
                        end
                    end
                end
            else
                io.printf("\t{magenta}This command don't have any arguments.{reset}\n")
            end
        end
    end
end

return Help