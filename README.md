<!-- Note for Kiwi you may change the format/style i don't mind--->

# *whäle*
The cli package manager for the [LÖVE](love2d.org) framework.

## Summary
Being tired of dropping lua files by hand?

This library aims to fix that, with a simple yet
effective brand new package spec called lovely crates.
This is the cli tool to populate your project.

## Getting started
1. Download this tool
2. Run `whale init <path to your love project>`
	- This will make a folder called `ocean` where `whale` will play on your project.
		- This folder will contain every library you install there.
		- It can be invoked using `local ocean = require("ocean")`.
		- Refer to the [ocean wip docs](https://www.youtube.com/watch?v=dQw4w9WgXcQ) for more info.
		<!--- for now no docs :( while we work on it we also shall do a little bit of trolling--->

3. Run `whale install <package>` when you're on your project's folder to install a package,
	use `--path` if you're not on the target project.
