--- You can return this right away or leverage your IDE Hint system.
--- @type table
local oceanspec = {
	----------------
	-- Properties --
	----------------

	--- The name of your product generally something sort, memorable, and easy to type.
	---
	--- field required.
	---@
	--- @type string
	package = "%s",

	--- The name of you or your orgatization, the choice is yours.
	---
	--- field required.
	--- @type string
	author = "%s",

	--- The version of this package
	---
	--- field required.
	--- @type string
	version = "%s",

	source = {
		--- Github generally. a page where the users can manually or whale can get the code.
		--- @type string
		---
		--- field required.
		url = "%s"
	},

	description = {
		--- Short but informative summary for your lovely crate.
		--- @type string
		---
		--- field required.
		summary = "%s",

		--- Explain your features capabilities and such with more care to detail.
		--- Just don't make a wall of text instead link the docs on the appropiate field.
		---
		--- field required.
		--- @type string
		detailed = "%s",

		--- Where you showcase your software, how to use, or in rare cases better alternatives.
		---
		--- optional
		--- @type string
		homepage = "%s",

		--- Where the user of your software can learn to use it comfortably.
		---
		--- optional
		--- @type string
		documentation = "%s"
	},

	---------------------------------------
	-- Interpreter specific requirements --
	---------------------------------------

	--- LÖVE2D version required if applicable.
	---
	--- optional
	--- @type string
	love = "%s",

	--- Lua virtual machine version required if applicable.
	---
	--- optional
	--- @type string
	lua = "%s",

	--- Foreign Function Interface or (ffi for short) version required if applicable.
	---
	--- optional
	--- @type string
	ffi = "%s",

	--- Lua Just-in-Time version required if applicable.
	---
	--- optional
	--- @type string
	jit = "%s",

	------------------------------
	-- Debian like requirements --
	------------------------------

	--- Things you absolutely need to work.
	---
	--- optional
	--- @type table
	dependencies = {},

	--- Things that directly doesn't affect functionality but goes nice along side.
	---
	--- optional
	--- @type table
	suggestions = {},

	--- Things are nice to have and may or may not affect functionality.
	---
	--- optional
	--- @type table
	recommendations = {},

	--- Things are not directly necesary but that when present improves functionality.
	---
	--- optional
	--- @type table
	enhancements = {},

	--------------------------------
	-- Platform specific optional --
	--------------------------------


	architectures = {}
}

return oceanspec
