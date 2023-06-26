MOD_NAME = "natura_bees"

function register()
  return {
    name = MOD_NAME,
    hooks = {"click", "clock", "destroy", "ready", "create", "draw"},
    modules = {"utility", "define", "mutations", "npc", "mutator", "quests"}
  }
end

function init()

  api_set_devmode(true)

  api_log("init", "Hello World!")

  define_bee()

  click()
  --giver()

  obj_definition()
  --item_definition()
  clock()
  ready()

  destroy()
  create()

  draw()
  --save()
  --data()
  --worldgen()

  npc_definition2()
  npc2008_dialogue_check()
  --discovery()
  --change_stock()

  --flower_definition()

  menu_objects()
  --seed_exchanger_define()
  --seed_exchanger_draw()
  --seed_exchanger_tick()
  --seed_exchanger_change()
  --recipes()

  define_quests()




  
  return "Success"
end
