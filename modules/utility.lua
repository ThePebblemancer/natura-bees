function destroy(id, x, y, oid)
  mouse_pos = api_get_mouse_position()
  if oid == "natura_bees_birch_tree" then
    api_create_item("log", api_random_range(1, 3), mouse_pos["x"], mouse_pos["y"], nil)
    birch_discovery = api_check_discovery("natura_bees_birch_tree_sapling")
    if birch_discovery == true then
      table.insert(stock1, "natura_bees_birch_tree_sapling")
      changing_stock[2] = stock1
    end
  end
  if oid == "natura_bees_maple_tree" then
    api_create_item("log", api_random_range(1, 3), mouse_pos["x"], mouse_pos["y"], nil)
    maple_discovery = api_check_discovery("natura_bees_maple_tree_sapling")
    if maple_discovery == true then
      table.insert(stock1, "natura_bees_maple_tree_sapling")
      changing_stock[2] = stock1
    end
  end
  if oid == "natura_bees_pine_tree" then
      api_create_item("log", api_random_range(1, 3), mouse_pos["x"], mouse_pos["y"], nil)
      pine_discovery = api_check_discovery("natura_bees_pine_tree_sapling")
    if pine_discovery == true then
      table.insert(stock1, "natura_bees_pine_tree_sapling")
      changing_stock[2] = stock1
    end
  end
  if oid == "natura_bees_mangrove_tree" then
    api_create_item("log", api_random_range(1, 3), mouse_pos["x"], mouse_pos["y"], nil)
    mangrove_discovery = api_check_discovery("natura_bees_mangrove_tree_sapling")
    if mangrove_discovery == true then
      table.insert(stock1, "natura_bees_mangrove_tree_sapling")
      changing_stock[2] = stock1
    end
  end
  if gen_complete == true then
    if oid == "tree" then
      chance = api_random(1)
      if chance == 0 then
        api_log("debug", "lucky. have a bee")
        stats = api_create_bee_stats("bark", false)
        api_create_item("bee", 1, mouse_pos["x"], mouse_pos["y"], stats)
      end
    end
  end
  if oid == "flower1" or oid == "flower2" or oid == "flower3" then
    chance = api_random(1)
    if chance == 0 then
      api_log("debug", "lucky. have a bee")
      stats = api_create_bee_stats("floral", false)
      api_create_item("bee", 1, mouse_pos["x"], mouse_pos["y"], stats)
    end
  end
  if oid == "natura_bees_mystery_seed_i" then
    tier_i = api_choose({"seedling1", "seedling3"})
    api_create_obj(tier_i, x, y)
  end
  if oid == "natura_bees_mystery_seed_ii" then
    tier_ii = api_choose({"seedling4", "seedling5", "seedling7"})
    api_create_obj(tier_ii, x, y)
  end
  if oid == "natura_bees_mystery_seed_iii" then
    tier_iii = api_choose({"seedling9", "seedling10", "seedling12", "seedling13"})
    api_create_obj(tier_iii, x, y)
  end
  if oid == "natura_bees_aquatic_mystery_seed" then
    tier_aquatic = api_choose({"seedling2", "seedling6", "seedling8", "seedling11"})
    api_create_obj(tier_aquatic, x, y)
  end
end


function click(button, click_type)
  if button == "LEFT" and click_type == "PRESSED" then
    mouse_pos = api_get_mouse_position()
    highlighted = api_get_highlighted("obj")
    equipped = api_get_equipped()
    if highlighted ~= nil then
      inst = api_get_inst(highlighted)
      if inst["oid"] == "natura_bees_birch_tree" or inst["oid"] == "natura_bees_maple_tree" or inst["oid"] == "natura_bees_pine_tree" or inst["oid"] == "natura_bees_mangrove_tree" then
        --current_health2 = current_health2 - 0.1
        --api_log("highlighted", "Found a block at coordinates : "..tostring(highlighted["x"])..";"..tostring(highlighted["y"]).. " with this OID : "..highlighted["oid"])
        health_now = api_get_property(highlighted, "current_health")
        if equipped == "axe1" or equipped == "axe2" then
          api_set_property(highlighted, "current_health", health_now - 1)
          api_refresh_tooltip()
          if health_now <= 1.1 then
            api_destroy_inst(highlighted)  
          end
        elseif equipped == "axe3" or equipped == "axe4" then
          api_set_property(highlighted, "current_health", health_now - 2)
          api_refresh_tooltip()
          if health_now <= 2.1 then
            api_destroy_inst(highlighted)  
          end
        else
          api_set_property(highlighted, "current_health", health_now - 0.1)
          api_refresh_tooltip()
          if health_now <= 0.1 then
            api_destroy_inst(highlighted)  
          end
        end
        if health_now <= 0.1 then
          api_destroy_inst(highlighted)  
        end
      end
      if equipped == "spade1" or equipped == "spade2" or equipped == "spade3" then
        if inst["oid"] == "natura_bees_birch_tree_sapling" then
          api_destroy_inst(highlighted)  
          api_create_item("natura_bees_birch_tree_sapling", 1, mouse_pos["x"], mouse_pos["y"], nil)
        elseif inst["oid"] == "natura_bees_maple_tree_sapling" then
          api_destroy_inst(highlighted)  
          api_create_item("natura_bees_maple_tree_sapling", 1, mouse_pos["x"], mouse_pos["y"], nil)
        elseif inst["oid"] == "natura_bees_pine_tree_sapling" then
          api_destroy_inst(highlighted)  
          api_create_item("natura_bees_pine_tree_sapling", 1, mouse_pos["x"], mouse_pos["y"], nil)
        elseif inst["oid"] == "natura_bees_mangrove_tree_sapling" then
          api_destroy_inst(highlighted)
          api_create_item("natura_bees_mangrove_tree_sapling", 1, mouse_pos["x"], mouse_pos["y"], nil)
        end
      end
      --[[if inst["oid"] == "flower2008" then
        api_create_obj("natura_bees_maple_tree", inst["x"], inst["y"])
      end]]
      --[[if inst["oid"] == "tree" then
        api_create_timer("giver", 0.1)
      end]]
    end
  end
end
--[[function click2(button, click_type)
  if button == "LEFT" and click_type == "PRESSED" then
    api_log("debug", "clicked")
    birch_tree_checker = api_get_highlighted("obj")
    if birch_tree_checker ~= nil then
      api_log("debug", "clicked on something")
      inst2 = api_get_inst(birch_tree
_checker)
      if inst2["oid"] == "birch_tree
" then
        api_log("debug", "clicked on a fake tree")
        item_equiped = api_get_equipped()
        if item_equiped == nil then
          api_log("debug", "has nothing equipped")
          birch_tree
    _number2 = api_get_menu_objects(nil, "natura_bees_birch_tree
    ")
          current_health2 = current_health2 - 0.1
          api_define_property("birch_tree
    _number2", "current_health", current_health2)
        end
      end
    end
  end
end]]


--[[function giver()
  tree_checker = api_get_highlighted("obj")
  if tree_checker == nil then
    chance = api_random(1)
    if chance == 0 then
      mouse_pos2 = api_get_mouse_position()
      api_log("debug", "lucky. have a bee")
      stats = api_create_bee_stats("arbor", false)
      api_create_item("bee", 1, mouse_pos2["x"], mouse_pos2["y"], stats)
    end
  end
end]]


-- local mouse_pos = api_get_mouse_position()
-- api_create_item("bee", 1, mouse_pos.x, mouse_pos.y, api_create_bee_stats("arbor", false)) -- credits: ThatGravyBoat


function clock()
  --[[player = api_get_player_position()
  birch_tree_checker = api_get_inst_in_circle("obj", player["x"], player["y"], 300)
  birch_tree_number = 1
  center = api_get_inst_in_circle("tree", player["x"], player["y"], 300)
  for i, obj in ipairs(birch_tree_checker) do
    birch_tree = api_gp(obj["id"], "oid") 
    if birch_tree == "natura_bees_birch_tree" then
      birch_tree_number = birch_tree_number + 1
    end
  end
  if birch_tree_number < 5 then
    for i = 1, 5 - birch_tree_number, 1 do
      if #center ~= 0 then
      random = api_choose(center)
      ground = api_get_ground(random["x"], random["y"])
        if ground == "grass1" or ground == "grass2" or ground == "grass3" or ground == "grass4" then
          api_create_obj("natura_bees_birch_tree", random["x"], random["y"])
        end
      end
    end
  end]]
  birch_tree_present = api_get_objects(nil, "natura_bees_birch_tree")
  pine_tree_present = api_get_objects(nil, "natura_bees_pine_tree")
  maple_tree_present = api_get_objects(nil, "natura_bees_maple_tree")
  mangrove_tree_present = api_get_objects(nil, "natura_bees_mangrove_tree")
  mystery_seed_i_present = api_get_objects(nil, "natura_bees_mystery_seed_i")
  mystery_seed_ii_present = api_get_objects(nil, "natura_bees_mystery_seed_ii")
  mystery_seed_iii_present = api_get_objects(nil, "natura_bees_mystery_seed_iii")
  aquatic_mystery_seed_present = api_get_objects(nil, "natura_bees_aquatic_mystery_seed")
  --flowering_maple = api_get_objects(nil, "seedling2008")
  if #birch_tree_present ~= 0 then
    for n = 1, #birch_tree_present do
      birch_tree1 = api_gp(birch_tree_present[n]["id"], "total_health")
      birch_tree2 = api_gp(birch_tree_present[n]["id"], "sy") 
      if birch_tree1 == 0 then
        random_range = api_random_range(2.0, 4.0)
        api_set_property(birch_tree_present[n]["id"], "total_health", random_range)
        api_set_property(birch_tree_present[n]["id"], "current_health", random_range)
        api_set_property(birch_tree_present[n]["id"], "sy", birch_tree2 + 11)
      end
    end
  end
  if #maple_tree_present ~= 0 then
    for n = 1, #maple_tree_present do
      maple_tree1 = api_gp(maple_tree_present[n]["id"], "total_health")
      maple_tree2 = api_gp(maple_tree_present[n]["id"], "sy")
      if maple_tree1 == 0 then
        random_range = api_random_range(3.0, 5.0)
        api_set_property(maple_tree_present[n]["id"], "total_health", random_range)
        api_set_property(maple_tree_present[n]["id"], "current_health", random_range)
        api_set_property(maple_tree_present[n]["id"], "sy", maple_tree2 + 11)
      end
    end
  end
  if #pine_tree_present ~= 0 then
    for n = 1, #pine_tree_present do
      pine_tree1 = api_gp(pine_tree_present[n]["id"], "total_health")
      pine_tree2 = api_gp(pine_tree_present[n]["id"], "sy")  
      if pine_tree1 == 0 then
        random_range = api_random_range(4.0, 6.0)
        api_set_property(pine_tree_present[n]["id"], "total_health", random_range)
        api_set_property(pine_tree_present[n]["id"], "current_health", random_range)
        api_set_property(pine_tree_present[n]["id"], "sy", pine_tree2 + 11)
      end
    end
  end
  if #mangrove_tree_present ~= 0 then
    for n = 1, #mangrove_tree_present do
      mangrove_tree1 = api_gp(mangrove_tree_present[n]["id"], "total_health")
      mangrove_tree2 = api_gp(mangrove_tree_present[n]["id"], "sy")  
      if mangrove_tree1 == 0 then
        random_range = api_random_range(4.0, 6.0)
        api_set_property(mangrove_tree_present[n]["id"], "total_health", random_range)
        api_set_property(mangrove_tree_present[n]["id"], "current_health", random_range)
        api_set_property(mangrove_tree_present[n]["id"], "sy", mangrove_tree2 + 17)
      end
    end
  end
  if #mystery_seed_i_present ~= 0 then
    for n = 1, #mystery_seed_i_present do
      mystery_seed_i_id = api_gp(mystery_seed_i_present[n]["id"], "id")
      api_destroy_inst(mystery_seed_i_id)
    end
  end
  if #mystery_seed_ii_present ~= 0 then
    for n = 1, #mystery_seed_ii_present do
      mystery_seed_ii_id = api_gp(mystery_seed_ii_present[n]["id"], "id")
      api_destroy_inst(mystery_seed_ii_id)
    end
  end
  if #mystery_seed_iii_present ~= 0 then
    for n = 1, #mystery_seed_iii_present do
      mystery_seed_iii_id = api_gp(mystery_seed_iii_present[n]["id"], "id")
      api_destroy_inst(mystery_seed_iii_id)
    end
  end
  if #aquatic_mystery_seed_present ~= 0 then
    for n = 1, #aquatic_mystery_seed_present do
      aquatic_mystery_seed_id = api_gp(aquatic_mystery_seed_present[n]["id"], "id")
      api_destroy_inst(aquatic_mystery_seed_id)
    end
  end
  --[[if #flowering_maple ~= 0 then
    for n = 1, #flowering_maple do
      inst2 = api_get_inst(flowering_maple[n]["id"])
      api_create_obj("natura_bees_maple_tree_sapling", inst2["x"], inst2["y"])
      api_destroy_inst(flowering_maple[n]["id"])
    end
  end]]

  time = api_get_time()
  hour = time["clock"]
  if hour == "17:10" then
    if api_gp(api_gp(api_get_menu_objects(nil, "npc2008")[1]["menu_id"], "shop"), "open") == true then
      change_stock("npc2008", changing_stock)
    end
  end
end

--[[function tick()
  if inst["current_health"] == 0 then
    api_destroy_inst(highlighted)
  end
end]]
--birch_tr_present = api_get_inst_in_circle("obj", player["x"], player ["y"], 40)
--choose_tree = api_choose(birch_tr_present)




function worldgen()
  gen_complete = false
  trees = api_all_trees()
  birch_tree_present2 = api_get_objects(nil, "natura_bees_birch_tree")
  if #birch_tree_present2 == 0 then
    for i=1,#trees do
      biome = api_gp(trees[i], "biome")
      if biome == "forest" then
        if api_random(100) < 10 then
          api_create_obj("natura_bees_birch_tree", api_gp(trees[i], "x"), api_gp(trees[i], "y"))
          api_destroy_inst(trees[i])
        end
      elseif biome == "snow" then
        if api_random(100) < 10 then
          api_create_obj("natura_bees_pine_tree", api_gp(trees[i], "x"), api_gp(trees[i], "y"))
          api_destroy_inst(trees[i])
        end
      elseif biome == "hallow" then
        if api_random(100) < 10 then
          api_create_obj("natura_bees_maple_tree", api_gp(trees[i], "x"), api_gp(trees[i], "y"))
          api_destroy_inst(trees[i])
        end
      elseif biome == "swamp" then
        if api_random(100) < 10 then
          api_create_obj("natura_bees_mangrove_tree", api_gp(trees[i], "x"), api_gp(trees[i], "y"))
          api_destroy_inst(trees[i])
        end
      end
    end
      --[[tree_chosen = api_choose(trees)
      ashley_posx = api_gp(tree_chosen, "x")
      ashley_posy = api_gp(tree_chosen, "y")]]    
  end
end



function ready()
  gen_complete = true
  friend = api_get_menu_objects(nil, "npc2008")
  if #friend == 0 then
    api_create_obj("npc2008", 3451, 827)
  end
end