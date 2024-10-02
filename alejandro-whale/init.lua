--Do code blocks fences off scope so you can pollute it with as many locals as you want.
--Also modern IDE's have code folding so obscuring parts you don't need to touch to focus is such a nice side effect.
do --Language
	local language = require("lib.language")
	local es = require("res.language.spanish.init")
	local en = require("res.language.english.init")
	language.loadLanguage("english", en)
	language.loadLanguage("spanish", es)
	language.setLanguage("english")
	language.setBackupLanguage("english")

	--Be explicit on your intent, this one will be used globally, since everywhere we need strings.
	_G.Language = language
end

do --Control: the game
	local arguments = require("lib.arguments")
	local actionController = require("lib.action_controller")
	actionController.run(arguments)

	local serpent = require("serpent")
	print(serpent.block(arguments))
end

do
	require("lib.util.os")
	colorize = require("lib.util.colorize")
	local content = os.readAll("res/drawable/whaletiny.txt")
	io.stdout:write("\n")
	io.stdout:write(colorize(content))
end




local config, cnf = require("system.config")
