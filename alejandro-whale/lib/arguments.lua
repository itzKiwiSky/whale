local argparse = require("argparse")
local colorize = require("lib.colorize")

--Shortcut
local lang = _G.Language

local parser = argparse("whale", colorize(lang.getString("argparseName")))
parser:option("--update update", lang.getString("commands.shortCliHelp.update"))
parser:option("--upgrade upgrade", lang.getString("commands.shortCliHelp.upgrade"))
parser:option("--full-upgrade full-upgrade", lang.getString("commands.shortCliHelp.fullUpgrade"))
parser:option("--update update", lang.getString("commands.shortCliHelp.update"))
parser:option("--install install", lang.getString("commands.shortCliHelp.install"))
parser:option("--show show", lang.getString("commands.shortCliHelp.show"))

parser:option("--help help h", lang.getString("commands.shortCliHelp.help"))

---The arguments already parsed as a table
---@type table
local args = parser:parse()

return args
