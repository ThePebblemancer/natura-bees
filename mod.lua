MOD_NAME = "natura_bees"

function register()
  return {
    name = MOD_NAME,
    hooks = {"ready", "gui", "click"}, -- subscribe to hooks we want so they're called
    modules = {"utility"} -- load other modules we need, in this case "/modules/utility.lua"
  }
end

function init() 

  api_set_devmode(true)

  log("init", "Hello World!")

  -- define a new bee species, add a hybrid recipe for it, and add a new trait to all bees
  define_bee()

  return "Success"
end
