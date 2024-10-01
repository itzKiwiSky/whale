local argparse = require("argparse")
local lang = require("language")

local parser = argparse("whale", "The LÖVE2D package manager")
parser:argument("install i", "Install a package")
