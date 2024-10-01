local language = require("lib.language")
local serpent = require("serpent")
local es = require("res.language.spanish.init")
local en = require("res.language.english.init")
language.loadLanguage("english", en)
language.loadLanguage("spanish", es)
language.setLanguage("english")
language.setBackupLanguage("english")
--Be explicit on your intent
_G.Language = language


local arguments = require("lib.arguments")
local config, cnf = require("system.config")

print(serpent.block(arguments))
