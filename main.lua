require("src.utils.Formattable")
require("src.utils.Math")
require("src.utils.StringTools")
require("src.utils.Switch")
require("src.utils.TermColors")
require("src.utils.ColoredWrite")
argparse = require 'src.argparse'

local function main(args)
    local p = argparse("command")
    local a = p:parse()
end

main(arg)