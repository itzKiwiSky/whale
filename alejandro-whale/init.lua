package.path = "./lib/?.lua;./lib/?/init.lua;" .. package.path
local language = require("lib.language")
local arguments = require("arguments")
local config, cnf = require("system.config")
local args = ...

local es = require("res.language.spanish.init")
local en = require("res.language.english.init")
language.loadLanguage("english", en)
language.loadLanguage("spanish", es)
