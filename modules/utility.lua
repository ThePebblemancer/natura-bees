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
      api_log("debug", "clicked on something")
      inst = api_get_inst(highlighted)
      if inst["oid"] == "tree" then
        api_log("debug", "clicked on a tree")
        api_create_timer("giver", 0.1)
      end
    end
  end
end



function giver()
  api_log("debug", "0.1 seconds have passed. Success value is 4")
  tree_checker2 = api_get_highlighted("obj")
  success_value = 4
      if highlighted ~= nil then
       api_log("debug", "something is highlighted")
      inst = api_get_inst(highlighted)
        if inst["oid"] == "tree" then
          api_log("debug", "tree highlighted. Success value is 3")
          success_value = 3
        else
          success_value = 4
        end
        if (success_value == 4) then
          api_log("debug", "success value is 3 again. Get bee")
          local mouse_pos = api_get_mouse_position()
    api_create_item("bee", 1, mouse_pos.x, mouse_pos.y, api_create_bee_stats("common", false)) -- credits: ThatGravyBoat
          success_value = 3
  end
end
end
  end
