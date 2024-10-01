require("whale.src.utils.Formattable")
require("whale.src.utils.Math")
require("whale.src.utils.StringTools")
require("whale.src.utils.Switch")
require("whale.src.utils.TermColors")
require("whale.src.utils.ColoredWrite")

lfs = require('lfs')
local serpent = require("serpent")
local language = require("whale.src.utils.Language")
local command = require("whale.src.Command")
local help = require("whale.src.Help")

local function main(args)
	command.init()
	command.run(args)
end

main(arg)
