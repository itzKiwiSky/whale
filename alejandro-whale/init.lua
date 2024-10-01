local arguments = require("lib.arguments")
local config, cnf = require("system.config")

local language = require("lib.language")
local es = require("res/language/spanish")
local en = require("res.language.english")
language.loadLanguage("english", en)
language.loadLanguage("spanish", es)
