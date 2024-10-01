local commands = {
	shortCliHelp = {
		update = "Update source indexes",
		upgrade = "Upgrade packages",
		fullUpgrade = "Upgrade ocean manager",
		install = "Install a set of packages",
		remove = "Removes a set of packages",
		show = "Shows the info of a package",
		help = "Show help articles for a given command"
	},
	cliHelp = {
		update =
		"update is used to download package information from all configured sources. Other commands operate on this data to e.g. perform package upgrades or search in and display details about all packages available for installation.",

		upgrade =
		"upgrade is used to install available upgrades of all packages currently installed on the system from the sources configured via the sources list. New packages will be installed if required to satisfy dependencies, but existing packages will never be removed. If an upgrade for a package requires the removal of an installed package the upgrade for this package isn't performed.",

		fullUpgrade =
		"full-upgrade performs the function of upgrade but will remove currently installed packages if this is needed to upgrade the system as a whole.",

		install =
		"install is used to instruct the package manager to get the necesary files to install one or more specified packages. A specific version of a package can be selected for installation by following the package name with an equals (=) and the version of the package to select. Alternatively the version from a specific release can be selected by following the package name with a forward slash (/) and codename (bullseye, bookworm, sid ...) or suite name (stable, testing, unstable). This will also selectversions from this release for dependencies of this package if needed to satisfy the request.",

		remove = "remove is used to get rid of a given set of packages (TODO: dependency recursion).",

		show =
		"Show information about the given package(s) including its dependencies, installation and download size, sources the package is available from, the description of the packages content and much more. It can e.g. be helpful to look at this information before allowing whale to remove a package or while searching for new packages to install.",

		help = [[Whale is a lovely package for the love framework.]]
	}
}
return commands
