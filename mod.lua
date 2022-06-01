MOD_NAME = "natura_bees"

function register()
  return {
    name = MOD_NAME,
    hooks = {"click"}, -- subscribe to hooks we want so they're called
    modules = {"utility"} -- load other modules we need, in this case "/modules/utility.lua"
  }
end

function init() 

  api_set_devmode(true)

  api_log("init", "Hello World!")

  define_bee()

  return "Success"
end

function click(button)

  api_log("click", button)

end
