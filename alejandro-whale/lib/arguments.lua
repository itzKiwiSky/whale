local argparse = require("argparse")
local colorize = require("lib.util.colorize")

--Shortcut
local lang = _G.Language

--The parser class
local parser = argparse("whale", colorize(lang.getString("argparseName"))):require_command(false)

local update = parser:command("update --update", lang.getString("commands.shortCliHelp.update"))
update:argument("soourceUpdateList"):args("*")

local updgrade = parser:command("--upgrade updgrade", lang.getString("commands.shortCliHelp.upgrade"))
updgrade:argument("packageUpgradeList"):args("+")

local fullUpgrade = parser:command("--full-upgrade", lang.getString("commands.shortCliHelp.fullUpgrade"))

local install = parser:command("install --install i", lang.getString("commands.shortCliHelp.install"))
install:argument("packageInstallList"):args("+")

local show = parser:command("show --show", lang.getString("commands.shortCliHelp.show"))
show:argument("packageShowList"):args("+")

local help = parser:command("help --help h", lang.getString("commands.shortCliHelp.help"))
help:argument("helpArticle")
	:choices({
		"update",
		"upgrade",
		"full-upgrade",
		"install",
		"show",
	})
	:args("*")


--mutex: mutually exclusive, so only one shall be on the command.
parser:mutex(
	parser:flag("-q --quiet"),
	parser:flag("-v --verbose")
)

---The arguments already parsed as a table
---@type table
local args = parser:parse()


return args
