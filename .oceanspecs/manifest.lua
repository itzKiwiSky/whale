-- This is a demostration of a beta package manager for lua and love.

local oceanspec = {
	package = "whale",
	author = "KiwiSky & Alejandro Alzate",
	version = "0.1",
	source = {
		url = "https://github.com/itzKiwiSky/whale/"
	},

	description = {
		summary = "A lovely package manager for LÖVE framework",
		detailed = [[
			LÖVE is an *awesome* framework you can use to make 2D games in Lua.
			It's free, open-source, and works on Windows, macOS, Linux, Android, and iOS.

			This is whale a command line interface to manage packages for it!
		]],
		homepage = "love2d.org",
		license = "https://github.com/love2d/love/blob/main/license.txt",
	},

	dependencies = {
		-- None, self contained. :)
	}
}

return oceanspec
