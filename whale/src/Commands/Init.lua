return {
    name = "init",
    category = "project",
    description = "Initialize a new project",
    alias = {"i", "initialize"},
    arguments = {
        {
            name = "useDefault",
            description = "use the default schema to create the package",
            deprecated = false,
            optional = true,
        }
    },
    action = function(args)
        
    end
}