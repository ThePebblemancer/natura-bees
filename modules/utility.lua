function define_bee()
  
  -- Arbor Bee
  bee_def = {
    id = "arbor",
    title = "Arbor",
    latin = "Apis Arborea",
    hint = "Tree dwellers, they might appear if you disrupt their homes.",
    desc = "This is just a cool damn bee",
    lifespan = {"Normal"},
    productivity = {"Normal", "Fast"},
    fertility = {"Fecund", "Prolific"},
    stability = {"Normal", "Stable"},
    behaviour = {"Nocturnal"},
    climate = {"Temperate"},
    rainlover = false,
    snowlover = false,
    grumpy = true,
    produce = "log",
    recipes = {
      { a = "arbor", b = "dream", s = "chaotic" }
    },
    calming = {"flower10", "flower11"},
    chance = 100,
    bid = "X3",
    requirement = ""
  }
  -- create new bee
  -- in this example we have a "sprites" folder in our mod root
  api_define_bee(bee_def, 
    "sprites/bee_item.png", "sprites/bee_shiny.png", 
    "sprites/bee_hd.png",
    {r=100, g=100, b=100},
    "sprites/bee_mag.png",
    "My Magazine Headline!",
    "My magazine body text!"
  );
  -- add a new mutation for our new bee
  api_define_bee_recipe("jurassic", "rocky", "arbor", "mutation_chance")
  -- add a new bee trait including our newly defined bee
  api_define_trait("magic", {
    common = {"low"}, 
    dream  = {"low", "medium"}, 
    arbor = {"high"}
  }, {"none"});
  
  -- Amber Bee
  bee_def = {
    id = "amber",
    title = "Amber",
    latin = "Apis Electrum",
    hint = "Some say when Praeteria found its way with Silva surrounded by trees, this species was born.",
    desc = "This is just a cool damn bee",
    lifespan = {"Normal"},
    productivity = {"Normal", "Fast"},
    fertility = {"Fecund", "Prolific"},
    stability = {"Normal", "Stable"},
    behaviour = {"Nocturnal"},
    climate = {"Temperate"},
    rainlover = false,
    snowlover = false,
    grumpy = true,
    produce = "log",
    recipes = {
      { a = "amber", b = "dream", s = "chaotic" }
    },
    calming = {"flower10", "flower11"},
    chance = 100,
    bid = "X3",
    requirement = ""
  }
  -- create new bee
  -- in this example we have a "sprites" folder in our mod root
  api_define_bee(bee_def, 
    "sprites/bee_item2.png", "sprites/bee_shiny2.png", 
    "sprites/bee_hd2.png",
    {r=100, g=100, b=100},
    "sprites/bee_mag2.png",
    "My Magazine Headline!",
    "My magazine body text!"
  );
  -- add a new mutation for our new bee
  api_define_bee_recipe("jurassic", "rocky", "arbor", "mutation_chance")
  -- default for all the other bees

end



function click(button, click_type)
  if button == "LEFT" and click_type == "PRESSED" then
    api_log("debug", "clicked")
    highlighted = api_get_highlighted("obj")
      if highlighted ~= nil then
       api_log("debug", "clicked on highlighted")
      inst = api_get_inst(highlighted)
        if inst["oid"] == "tree" then
          api_log("debug", "highlighted is a tree, starting timer")
              api_create_timer("giver", 0.1)
        else
          api_log("debug", "clicked on something that isn't a tree. nothing happens")
        end
        else
          api_log("debug", "clicked on nothing. nothing happens")
        end
      end
    end



  function giver()
    tree_checker = api_get_highlighted("obj")
    api_log("debug", "timer finished, checking for destroyed tree")
    if tree_checker == nil then
      api_log("debug", "nothing highlighted. testing your luck")
        chance = api_random(1)
        if chance == 0 then
          api_log("debug", "lucky. have a bee")
          mouse_pos = api_get_mouse_position()
          stats = api_create_bee_stats("arbor", false)
          api_create_item("bee", 1, mouse_pos["x"], mouse_pos["y"], stats)
        else
          api_log("debug", "unlucky. nothing happens")
    end
  else
    api_log("debug", "you still have something highlighted. nothing happens")
  end
end
